package net.sf.mpxj.cpm;

import java.time.LocalDateTime;

import net.sf.mpxj.ProjectCalendar;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Task;
import net.sf.mpxj.TaskField;
import net.sf.mpxj.reader.UniversalProjectReader;

public class CpmTest
{
   public static void main(String[] argv) throws Exception
   {
      CpmTest test = new CpmTest();

      test.process("/Users/joniles/Downloads/cpm-sample-fs-1.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-fs-2.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-fs-3.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-fs-4.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-fs-5.mpp");

      test.process("/Users/joniles/Downloads/cpm-sample-sf-1.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-sf-2.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-sf-3.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-sf-4.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-sf-5.mpp");

      test.process("/Users/joniles/Downloads/cpm-sample-ff-1.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-ff-2.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-ff-3.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-ff-4.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-ff-5.mpp");

      test.process("/Users/joniles/Downloads/cpm-sample-ss-1.mpp");
//      test.process("/Users/joniles/Downloads/cpm-sample-ss-2.mpp");
//      test.process("/Users/joniles/Downloads/cpm-sample-ss-3.mpp");
   }

   public void process(String file) throws Exception
   {
      System.out.print("Processing " + file + " ... ");
      m_errorCount = 0;
      m_buffer.setLength(0);

      ProjectFile baseline = new UniversalProjectReader().read(file);
      ProjectFile working = new UniversalProjectReader().read(file);

      new Schedule(working).process(working.getProjectProperties().getStartDate());

      for (Task baselineTask : baseline.getTasks())
      {
         compare(baselineTask, working.getTaskByUniqueID(baselineTask.getUniqueID()));
      }

      if (m_errorCount == 0)
      {
         System.out.println("done.");
      }
      else
      {
         System.out.println("failed.");
         System.out.println(m_buffer);
         System.out.println(m_errorCount + " errors");
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

      m_buffer.append(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);

      if (!baselineDate.isEqual(workingDate))
      {
         ProjectCalendar calendar = baseline.getEffectiveCalendar();
         if (calendar.getNextWorkStart(workingDate).isEqual(baselineDate))
         {
            //System.out.print(" WARN");
         }
         else
         {
            m_buffer.append(" FAIL");
            ++m_errorCount;
         }
      }

      m_buffer.append("\n");
   }

   private int m_errorCount;
   private final StringBuffer m_buffer = new StringBuffer();
}
