package net.sf.mpxj.cpm;

import java.time.LocalDateTime;

import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Task;
import net.sf.mpxj.TaskField;
import net.sf.mpxj.reader.UniversalProjectReader;

public class CpmTest
{
   public static void main(String[] argv) throws Exception
   {
      new CpmTest().process("/Users/joniles/Downloads/cpm-sample-4.mpp");
   }

   public void process(String file) throws Exception
   {
      ProjectFile baseline = new UniversalProjectReader().read(file);
      ProjectFile working = new UniversalProjectReader().read(file);

      new Schedule(working).process(working.getProjectProperties().getStartDate());

      for (Task baselineTask : baseline.getTasks())
      {
         compare(baselineTask, working.getTaskByUniqueID(baselineTask.getUniqueID()));
      }
   }

   private void compare(Task baseline, Task working)
   {
      compare(baseline, working, TaskField.EARLY_START);
      compare(baseline, working, TaskField.EARLY_FINISH);
      compare(baseline, working, TaskField.LATE_START);
      compare(baseline, working, TaskField.LATE_FINISH);
   }

   private void compare(Task baseline, Task working, TaskField field)
   {
      LocalDateTime baselineDate = (LocalDateTime)baseline.get(field);
      LocalDateTime workingDate = (LocalDateTime)working.get(field);

      System.out.print(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);
      if (!baselineDate.isEqual(workingDate))
      {
         // throw new RuntimeException(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);
         //System.out.println(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);
         System.out.print(" FAIL");
      }
      System.out.println();
   }
}
