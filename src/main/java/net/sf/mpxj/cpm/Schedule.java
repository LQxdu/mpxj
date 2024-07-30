package net.sf.mpxj.cpm;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import net.sf.mpxj.ConstraintType;
import net.sf.mpxj.Duration;
import net.sf.mpxj.ProjectCalendar;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Relation;
import net.sf.mpxj.Task;
import net.sf.mpxj.TaskMode;
import net.sf.mpxj.common.LocalDateTimeHelper;

public class Schedule
{
   public Schedule(ProjectFile file)
   {
      m_file = file;
   }

   public void process(LocalDateTime projectStartDate) throws Exception
   {
      List<Task> tasks = new DepthFirstGraphSort(m_file).sort();

      // Forward pass
      for (Task task : tasks)
      {
         ProjectCalendar calendar = task.getEffectiveCalendar();
         LocalDateTime earlyStart;

         if (task.getActualStart() == null)
         {
            if (task.getTaskMode() == TaskMode.MANUALLY_SCHEDULED)
            {
               // TODO: we need to be able to identify where NO start date has been supplied, which appears to trigger using ScheduledStart rather than Start
               earlyStart = task.getStart();
            }
            else
            {
               List<Relation> predecessors = task.getPredecessors();
               if (predecessors.isEmpty())
               {
                  //earlyStart = projectStartDate;

                  switch (task.getConstraintType())
                  {
                     case START_NO_EARLIER_THAN:
                     {
                        earlyStart = task.getConstraintDate();
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
         }
         else
         {
            earlyStart = task.getActualStart();
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

               case MUST_FINISH_ON:
               {
                  earlyStart = calendar.getDate(task.getConstraintDate(), task.getDuration().negate());
                  break;
               }

               case START_NO_LATER_THAN:
               {
                  //                  if (earlyStart.isAfter(task.getConstraintDate()))
                  //                  {
                  //                     earlyStart = task.getConstraintDate();
                  //                  }
                  //                  break;
               }
            }
         }

         LocalDateTime earlyFinish = calendar.getDate(earlyStart, task.getDuration());
         task.setEarlyStart(earlyStart);
         task.setEarlyFinish(earlyFinish);
      }

      LocalDateTime projectFinishDate = tasks.stream().map(Task::getEarlyFinish).max(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing early finish date"));

      // Backward pass
      Collections.reverse(tasks);
      for (Task task : tasks)
      {
         List<Relation> successors = m_file.getRelations().getRawSuccessors(task);
         ProjectCalendar calendar = task.getEffectiveCalendar();
         LocalDateTime lateFinish;

         if (task.getActualFinish() == null)
         {
            if (successors.isEmpty())
            {
               lateFinish = projectFinishDate;
            }
            else
            {
               lateFinish = successors.stream().map(r -> calculateLateFinish(calendar, projectFinishDate, r)).min(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing late start date"));
            }
         }
         else
         {
            lateFinish = task.getActualFinish();
         }
         LocalDateTime lateStart = calendar.getDate(lateFinish, task.getDuration().negate());

         task.setLateFinish(calendar.getPreviousWorkFinish(lateFinish));
         task.setLateStart(lateStart);
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

   private final ProjectFile m_file;
}
