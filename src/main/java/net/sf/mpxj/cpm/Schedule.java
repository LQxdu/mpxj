package net.sf.mpxj.cpm;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import net.sf.mpxj.Duration;
import net.sf.mpxj.ProjectCalendar;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Relation;
import net.sf.mpxj.Task;
import net.sf.mpxj.TaskMode;
import net.sf.mpxj.TimeUnit;

public class Schedule
{
   public Schedule(ProjectFile file)
   {
      m_file = file;
   }

   public void process(LocalDateTime projectStartDate) throws Exception
   {
      List<Task> tasks = new DepthFirstGraphSort(m_file).sort();
      if (tasks.isEmpty())
      {
         return;
      }

      // Forward pass
      for (Task task : tasks)
      {
         ProjectCalendar calendar = task.getEffectiveCalendar();
         LocalDateTime earlyStart;

         LocalDateTime earlyFinish = null;
         if (task.getActualStart() == null)
         {
            if (task.getTaskMode() == TaskMode.MANUALLY_SCHEDULED)
            {
               // TODO: we need to be able to identify where NO start date has been supplied, which appears to trigger using ScheduledStart rather than Start
               task.setEarlyStart(task.getStart());
               task.setEarlyFinish(task.getFinish());
               continue;
            }
            else
            {
               List<Relation> predecessors = task.getPredecessors().stream().filter(r -> r.getTargetTask().getActive()).collect(Collectors.toList());
               if (predecessors.isEmpty())
               {
                  switch (task.getConstraintType())
                  {
                     case START_NO_EARLIER_THAN:
                     {
                        earlyStart = task.getConstraintDate();
                        break;
                     }

                     case FINISH_NO_EARLIER_THAN:
                     {
                        earlyFinish = task.getConstraintDate();
                        earlyStart = calendar.getDate(earlyFinish, task.getDuration().negate());
                        break;
                     }

                     default:
                     {
                        earlyStart = projectStartDate;
                        break;
                     }
                  }
               }
               else
               {
                  earlyStart = predecessors.stream().map(r -> calculateEarlyStart(calendar, r)).max(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing early start date"));
               }
               earlyStart = calendar.getNextWorkStart(earlyStart);
            }

            if (task.getConstraintType() != null)
            {
               switch (task.getConstraintType())
               {
                  case START_NO_EARLIER_THAN:
                  {
                     if (earlyStart.isBefore(task.getConstraintDate()))
                     {
                        earlyStart = task.getConstraintDate();
                     }
                     break;
                  }

                  case FINISH_NO_LATER_THAN:
                  {
                     LocalDateTime latestStart = calendar.getDate(task.getConstraintDate(), task.getDuration().negate());
                     if (earlyStart.isAfter(latestStart))
                     {
                        earlyStart = latestStart;
                     }
                     break;
                  }

                  case FINISH_NO_EARLIER_THAN:
                  {
                     LocalDateTime earliestStart = calendar.getDate(task.getConstraintDate(), task.getDuration().negate());
                     if (earlyStart.isBefore(earliestStart))
                     {
                        earlyStart = earliestStart;
                     }
                     break;
                  }

                  case START_NO_LATER_THAN:
                  {
                     if (earlyStart.isAfter(task.getConstraintDate()))
                     {
                        earlyStart = task.getConstraintDate();
                     }
                     break;
                  }

                  case MUST_START_ON:
                  {
                     earlyStart = task.getConstraintDate();
                     break;
                  }

                  case MUST_FINISH_ON:
                  {
                     earlyFinish = task.getConstraintDate();
                     earlyStart = calendar.getDate(earlyFinish, task.getDuration().negate());
                     break;
                  }
               }
            }
         }
         else
         {
            earlyStart = task.getActualStart();
         }

         if (earlyFinish == null)
         {
            earlyFinish = task.getActualFinish() == null ? calendar.getDate(addLevelingDelay(calendar, earlyStart, task.getLevelingDelay()), task.getDuration()) : task.getActualFinish();
         }

         task.setEarlyStart(earlyStart);
         task.setEarlyFinish(earlyFinish);
      }

      LocalDateTime projectFinishDate = tasks.stream().map(Task::getEarlyFinish).max(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing early finish date"));

      // Backward pass
      Collections.reverse(tasks);
      for (Task task : tasks)
      {
         List<Relation> successors = m_file.getRelations().getRawSuccessors(task).stream().filter(r -> r.getSourceTask().getActive()).collect(Collectors.toList());
         ProjectCalendar calendar = task.getEffectiveCalendar();
         LocalDateTime lateFinish;


         if (task.getActualFinish() == null)
         {
            // Special case: if we have a milestone with only an actual start set, actual start (and hence late finish) must have the same date
            if (task.getMilestone() && task.getActualStart() != null)
            {
               lateFinish = task.getActualStart();
            }
            else
            {
               if (successors.isEmpty())
               {
                  lateFinish = projectFinishDate;
               }
               else
               {
                  lateFinish = successors.stream().map(r -> calculateLateFinish(calendar, projectFinishDate, r)).min(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing late start date"));
               }

               switch (task.getConstraintType())
               {
                  case MUST_START_ON:
                  {
                     lateFinish = calendar.getDate(task.getConstraintDate(), task.getDuration());
                     break;
                  }

                  case MUST_FINISH_ON:
                  {
                     lateFinish = task.getConstraintDate();
                     break;
                  }

                  case START_NO_LATER_THAN:
                  {
                     LocalDateTime latestFinish = calendar.getDate(task.getConstraintDate(), task.getDuration());
                     if (lateFinish.isAfter(latestFinish))
                     {
                        lateFinish = latestFinish;
                     }
                     break;
                  }

                  case FINISH_NO_LATER_THAN:
                  {
                     if (lateFinish.isAfter(task.getConstraintDate()))
                     {
                        lateFinish = task.getConstraintDate();
                     }
                  }
               }

               if (task.getDeadline() != null && lateFinish.isAfter(task.getDeadline()))
               {
                  lateFinish = task.getDeadline();
               }

               // If we are at the start of the next period of work, we can move back to the end of the previous period of work
               LocalDateTime previousWorkFinish = calendar.getPreviousWorkFinish(lateFinish);

               // TODO: this condition is not correct
               if (!previousWorkFinish.isBefore(lateFinish) && calendar.getWork(previousWorkFinish, lateFinish, TimeUnit.HOURS).getDuration() == 0)
               {
                  lateFinish = previousWorkFinish;
               }
            }
         }
         else
         {
            lateFinish = task.getActualFinish();
         }

         LocalDateTime lateStart = task.getActualStart() == null ? calendar.getDate(lateFinish, task.getDuration().negate()) : task.getActualStart();

         task.setLateStart(lateStart);
         task.setLateFinish(lateFinish);
      }
   }

   private LocalDateTime calculateEarlyStart(ProjectCalendar calendar, Relation relation)
   {
      Task task = relation.getTargetTask();

      switch (relation.getType())
      {
         case FINISH_START:
         {
            return calendar.getDate(task.getEarlyFinish(), relation.getLag());
         }

         case START_START:
         {
            return calendar.getDate(task.getEarlyStart(), relation.getLag());
         }

         case FINISH_FINISH:
         {
            LocalDateTime earlyStart = calendar.getDate(task.getEarlyFinish(), relation.getSourceTask().getDuration().negate());

            earlyStart = calendar.getDate(earlyStart, relation.getLag());

//            if (earlyStart.isBefore(task.getEarlyStart()))
//            {
//               earlyStart = task.getEarlyStart();
//            }
            return earlyStart;
         }

         case START_FINISH:
         {
            return calendar.getDate(calendar.getDate(task.getEarlyStart(), relation.getSourceTask().getDuration().negate()), relation.getLag());
         }

         default:
         {
            throw new UnsupportedOperationException();
         }
      }
   }

   private LocalDateTime calculateLateFinish(ProjectCalendar calendar, LocalDateTime projectFinishDate, Relation relation)
   {
      Task predecessorTask = relation.getTargetTask();
      Task successorTask = relation.getSourceTask();
      LocalDateTime lateFinish;

      switch (relation.getType())
      {
         case START_START:
         {
//            LocalDateTime lateStart = calendar.getNextWorkStart(calendar.getDate(successorTask.getLateStart(), relation.getLag().negate()));
//            lateFinish = calendar.getDate(lateStart, predecessorTask.getDuration());
            lateFinish = projectFinishDate;
            break;
         }

         case FINISH_FINISH:
         {
            //lateFinish = calendar.getDate(projectFinishDate, relation.getLag().negate());
            lateFinish = calendar.getDate(successorTask.getLateFinish(), relation.getLag().negate());
            break;
         }

         case START_FINISH:
         {
            lateFinish = calendar.getDate(successorTask.getLateFinish(), predecessorTask.getDuration());
            lateFinish = calendar.getDate(lateFinish, relation.getLag().negate());
            break;
         }

         default:
         {
            lateFinish = calendar.getDate(successorTask.getLateStart(), relation.getLag().negate());
            break;
         }
      }

      if (lateFinish.isAfter(projectFinishDate))
      {
         return projectFinishDate;
      }

//      if (lateFinish.isBefore(predecessorTask.getEarlyFinish()))
//      {
//         return predecessorTask.getEarlyFinish();
//      }

      return lateFinish;
   }

   private LocalDateTime addLevelingDelay(ProjectCalendar calendar, LocalDateTime date, Duration delay)
   {
      if (delay == null || delay.getDuration() == 0)
      {
         return date;
      }

      // Original duration
      double duration = delay.getDuration();

      // Convert to minutes
      switch (delay.getUnits())
      {
         case HOURS:
         case ELAPSED_HOURS:
         {
            duration = duration * 60.0;
            break;
         }

         case DAYS:
         case ELAPSED_DAYS:
         {
            duration = duration * 1440.0;
            break;
         }

         case WEEKS:
         case ELAPSED_WEEKS:
         {
            duration = duration * 1440.0 * 7.0;
            break;
         }

         case MONTHS:
         case ELAPSED_MONTHS:
         {
            duration = duration * 1440.0 * 30;
            break;
         }

         case YEARS:
         case ELAPSED_YEARS:
         {
            duration = duration * 1440.0 * 365.0;
            break;
         }

         default:
         {
            throw new UnsupportedOperationException("Unsupported TimeUnit " + delay.getUnits());
         }
      }

      return date.plusMinutes((long)duration);
   }

   private final ProjectFile m_file;
}