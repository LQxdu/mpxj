package net.sf.mpxj.cpm;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import net.sf.mpxj.Duration;
import net.sf.mpxj.ProjectCalendar;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Relation;
import net.sf.mpxj.Task;

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
         List<Relation> predecessors = task.getPredecessors();
         ProjectCalendar calendar = task.getEffectiveCalendar();
         LocalDateTime earlyStart;

         if (predecessors.isEmpty())
         {
            earlyStart = projectStartDate;
         }
         else
         {
            earlyStart = predecessors.stream().map(r -> calculateEarlyStart(calendar, r)).max(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing early start date"));
         }

         earlyStart = calendar.getNextWorkStart(earlyStart);
         LocalDateTime earlyFinish = calendar.getDate(earlyStart, task.getDuration());
         task.setEarlyStart(earlyStart);
         task.setEarlyFinish(earlyFinish);
      }

      LocalDateTime projectFinishDate = tasks.stream().map(Task::getEarlyFinish).max(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing early finish date"));
      System.out.println("Project Finish Date: " + projectFinishDate);

      // Backward pass
      Collections.reverse(tasks);
      for (Task task : tasks)
      {
         List<Relation> successors = m_file.getRelations().getRawSuccessors(task);
         ProjectCalendar calendar = task.getEffectiveCalendar();
         LocalDateTime lateFinish;
         if (successors.isEmpty())
         {
            lateFinish = projectFinishDate;
         }
         else
         {
            lateFinish = successors.stream().map(r -> calculateLateFinish(calendar, projectFinishDate, r)).min(Comparator.naturalOrder()).orElseThrow(() -> new CpmException("Missing late start date"));
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

            if (earlyStart.isBefore(task.getEarlyStart()))
            {
               earlyStart = task.getEarlyStart();
            }
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
      switch (relation.getType())
      {
         case START_START:
         {
            LocalDateTime lateFinish = calendar.getDate(relation.getSourceTask().getLateStart(), relation.getTargetTask().getDuration());
            return calendar.getDate(lateFinish, relation.getLag().negate());
         }

         case FINISH_FINISH:
         {
            Duration lag = relation.getLag();
            if (lag.getDuration() < 1)
            {
               return projectFinishDate;
            }

            return calendar.getDate(projectFinishDate, lag.negate());
         }

         case START_FINISH:
         {
            LocalDateTime lateFinish = relation.getSourceTask().getLateFinish();
            lateFinish = calendar.getNextWorkStart(lateFinish);
            Duration taskDuration = relation.getTargetTask().getDuration();
            LocalDateTime adjustedLateFinish = calendar.getDate(lateFinish, taskDuration);

            adjustedLateFinish = calendar.getDate(adjustedLateFinish, relation.getLag().negate());
            if (adjustedLateFinish.isAfter(projectFinishDate))
            {
               return projectFinishDate;
            }
            return adjustedLateFinish;
         }

         default:
         {
            return relation.getSourceTask().getLateStart();
         }
      }
   }

   private final ProjectFile m_file;
}
