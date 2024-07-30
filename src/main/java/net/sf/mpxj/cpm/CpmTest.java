package net.sf.mpxj.cpm;

import java.io.File;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import net.sf.mpxj.ProjectCalendar;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Relation;
import net.sf.mpxj.Task;
import net.sf.mpxj.TaskField;
import net.sf.mpxj.reader.UniversalProjectReader;

public class CpmTest
{
   public static void main(String[] argv) throws Exception
   {
      if(argv.length != 1)
      {
         System.out.println("Usage: CpmTest <folder>");
         return;
      }

      CpmTest test = new CpmTest();

      File directory = new File(argv[0]);
      File[] fileList = directory.listFiles((dir, name) -> name.toLowerCase().endsWith(".mpp"));

      for(File file : fileList)
      {
         if (EXCLUDED_FILES.contains(file.getName().toLowerCase()))
         {
            continue;
         }
         test.process(file.getPath());
      }

/*
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
      test.process("/Users/joniles/Downloads/cpm-sample-ss-2.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-ss-3.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-ss-4.mpp");
      test.process("/Users/joniles/Downloads/cpm-sample-ss-5.mpp");
 */
   }

   public void process(String file) throws Exception
   {
      System.out.print("Processing " + file + " ... ");
      m_errorCount = 0;
      m_buffer.setLength(0);

      m_baselineFile = new UniversalProjectReader().read(file);
      m_workingFile = new UniversalProjectReader().read(file);

      new Schedule(m_workingFile).process(m_workingFile.getProjectProperties().getStartDate());

      for (Task baselineTask : m_baselineFile.getTasks())
      {
         compare(baselineTask, m_workingFile.getTaskByUniqueID(baselineTask.getUniqueID()));
      }

      if (m_errorCount == 0)
      {
         System.out.println("done.");
      }
      else
      {
         System.out.println("failed.");
         //System.out.println(m_buffer);
         System.out.println(m_errorCount + " errors");
         analyseFailures();
      }
   }

   private void compare(Task baseline, Task working)
   {
      boolean earlyStartFailed = !compare(baseline, working, TaskField.EARLY_START);
      boolean earlyFinishFailed = !compare(baseline, working, TaskField.EARLY_FINISH);

      compare(baseline, working, TaskField.LATE_START);
      compare(baseline, working, TaskField.LATE_FINISH);
   }

   private boolean compare(Task baseline, Task working, TaskField field)
   {
      boolean result = true;
      LocalDateTime baselineDate = (LocalDateTime)baseline.get(field);
      LocalDateTime workingDate = (LocalDateTime)working.get(field);

      m_buffer.append(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);

      if (!baselineDate.isEqual(workingDate))
      {
         ProjectCalendar calendar = baseline.getEffectiveCalendar();
         if (calendar.getNextWorkStart(workingDate).isEqual(baselineDate) || calendar.getNextWorkStart(baselineDate).isEqual(workingDate))
         {
            //System.out.print(" WARN");
         }
         else
         {
            m_buffer.append(" FAIL");
            ++m_errorCount;
            result = false;
         }
      }

      m_buffer.append("\n");
      return result;
   }

   private boolean compareDates(Task baseline, Task working, TaskField field)
   {
      LocalDateTime baselineDate = (LocalDateTime)baseline.get(field);
      LocalDateTime workingDate = (LocalDateTime)working.get(field);

      if (baselineDate.isEqual(workingDate))
      {
         return true;
      }

      ProjectCalendar calendar = baseline.getEffectiveCalendar();
      return calendar.getNextWorkStart(workingDate).isEqual(baselineDate) || calendar.getNextWorkStart(baselineDate).isEqual(workingDate);
   }

   private void analyseFailures() throws CycleException
   {
      List<Task> tasks = new DepthFirstGraphSort(m_workingFile).sort();
      for (Task working : tasks)
      {
         Task baseline = m_baselineFile.getTaskByUniqueID(working.getUniqueID());
         boolean earlyStartFail = !compareDates(baseline, working, TaskField.EARLY_START);
         boolean earlyFinishFail = !compareDates(baseline, working, TaskField.EARLY_FINISH);

         System.out.println(working);
         System.out.println("Early Start: " + baseline.getEarlyStart() + " " + working.getEarlyStart() + (earlyStartFail ? " FAIL" : ""));
         System.out.println("Early Finish: " + baseline.getEarlyFinish() + " " + working.getEarlyFinish() + (earlyFinishFail ? " FAIL" : ""));
         System.out.println();
      }
   }

   private ProjectFile m_baselineFile;
   private ProjectFile m_workingFile;
   private int m_errorCount;
   private final StringBuffer m_buffer = new StringBuffer();

   private static final Set<String> EXCLUDED_FILES = new HashSet<>();
   static
   {
      EXCLUDED_FILES.add("photographic-magic.mpp"); // External tasks used but not visible in MSP
   }
}
