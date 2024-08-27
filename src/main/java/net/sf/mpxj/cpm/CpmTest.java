package net.sf.mpxj.cpm;

import java.io.File;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
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
         System.out.println("Usage: CpmTest <folder or file>");
         return;
      }

      CpmTest test = new CpmTest();

      File directory = new File(argv[0]);
      File[] fileList = directory.listFiles((dir, name) -> name.toLowerCase().endsWith(".mpp"));

      for(File file : fileList)
      {
         String name = file.getName().toLowerCase();
         if (EXCLUDED_FILES.contains(name) || (!INCLUDED_FILES.isEmpty() && !INCLUDED_FILES.contains(name)))
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
      m_forwardErrorCount = 0;
      m_backwardErrorCount = 0;
      //m_buffer.setLength(0);

      m_baselineFile = new UniversalProjectReader().read(file);
      m_workingFile = new UniversalProjectReader().read(file);

      new Schedule(m_workingFile).process(m_workingFile.getProjectProperties().getStartDate());

      for (Task baselineTask : m_baselineFile.getTasks())
      {
         compare(baselineTask, m_workingFile.getTaskByUniqueID(baselineTask.getUniqueID()));
      }

      if (m_forwardErrorCount == 0&& m_backwardErrorCount == 0)
      {
         System.out.println("done.");
      }
      else
      {
         System.out.println("failed.");
         //System.out.println(m_buffer);
         System.out.println("Forward errors: " + m_forwardErrorCount);
         System.out.println("Backward errors: " + m_backwardErrorCount);
         analyseFailures();
         System.out.println("DONE");
      }
   }

   private void compare(Task baseline, Task working)
   {
      // Ignore summary and inactive tasks
      if (baseline.getSummary() || !baseline.getActive() || baseline.getNull())
      {
         return;
      }

      boolean earlyStartFailed = !compare(baseline, working, TaskField.EARLY_START);
      boolean earlyFinishFailed = !compare(baseline, working, TaskField.EARLY_FINISH);
      if (earlyStartFailed || earlyFinishFailed)
      {
         ++m_forwardErrorCount;
      }

      boolean lateStartFailed = !compare(baseline, working, TaskField.LATE_START);
      boolean lateFinishFailed = !compare(baseline, working, TaskField.LATE_FINISH);
      if (lateStartFailed || lateFinishFailed)
      {
         ++m_backwardErrorCount;
      }
   }

   private boolean compare(Task baseline, Task working, TaskField field)
   {
      boolean result = true;
      LocalDateTime baselineDate = (LocalDateTime)baseline.get(field);
      LocalDateTime workingDate = (LocalDateTime)working.get(field);

      //m_buffer.append(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);

      if (!baselineDate.isEqual(workingDate))
      {
         ProjectCalendar calendar = baseline.getEffectiveCalendar();
         if (calendar.getNextWorkStart(workingDate).isEqual(baselineDate) || calendar.getNextWorkStart(baselineDate).isEqual(workingDate))
         {
            //System.out.print(" WARN");
         }
         else
         {
           // m_buffer.append(" FAIL");
            result = false;
         }
      }

      //m_buffer.append("\n");
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

      if (m_forwardErrorCount != 0)
      {
         for (Task working : tasks)
         {
            if (working.getSummary() || !working.getActive() || working.getNull())
            {
               continue;
            }

            Task baseline = m_baselineFile.getTaskByUniqueID(working.getUniqueID());
            boolean earlyStartFail = !compareDates(baseline, working, TaskField.EARLY_START);
            boolean earlyFinishFail = !compareDates(baseline, working, TaskField.EARLY_FINISH);

            System.out.println(working);
            System.out.println("Early Start: " + baseline.getEarlyStart() + " " + working.getEarlyStart() + (earlyStartFail ? " FAIL" : ""));
            System.out.println("Early Finish: " + baseline.getEarlyFinish() + " " + working.getEarlyFinish() + (earlyFinishFail ? " FAIL" : ""));
            System.out.println();
         }
      }

      if (m_backwardErrorCount != 0)
      {
         Collections.reverse(tasks);

         for (Task working : tasks)
         {
            if (working.getSummary() || !working.getActive() || working.getNull())
            {
               continue;
            }

            Task baseline = m_baselineFile.getTaskByUniqueID(working.getUniqueID());
            boolean lateStartFail = !compareDates(baseline, working, TaskField.LATE_START);
            boolean lateFinishFail = !compareDates(baseline, working, TaskField.LATE_FINISH);

            System.out.println(working);
            System.out.println("Late Start: " + baseline.getLateStart() + " " + working.getLateStart() + (lateStartFail ? " FAIL" : ""));
            System.out.println("Late Finish: " + baseline.getLateFinish() + " " + working.getLateFinish() + (lateFinishFail ? " FAIL" : ""));
            System.out.println();
         }
      }
   }

   private ProjectFile m_baselineFile;
   private ProjectFile m_workingFile;
   private int m_forwardErrorCount;
   private int m_backwardErrorCount;
   //private final StringBuffer m_buffer = new StringBuffer();

   private static final Set<String> EXCLUDED_FILES = new HashSet<>();
   static
   {
      EXCLUDED_FILES.add("photographic-magic.mpp"); // External tasks used but not visible in MSP
      EXCLUDED_FILES.add("bizarre-doomsday.mpp"); // Manually scheduled task without any explicitly supplied dates
      EXCLUDED_FILES.add("optimistic-layer.mpp"); // TODO: maybe we're not working with calendars correctly - should be considering the resource calendars and merging?
      EXCLUDED_FILES.add("adequate-function.mpp"); // TODO: assignment leveling delay
      EXCLUDED_FILES.add("serene-birthright.mpp"); // TODO: oddity handling one late finish constraint versus end of working time
      EXCLUDED_FILES.add("microsomal-finisher.mpp"); // TODO: late finish, project end determined by constrained task - use unconstrained early finish as project end?
      EXCLUDED_FILES.add("circulatory-collapse.mpp"); // TODO: needs calculation at assignment level?
      EXCLUDED_FILES.add("onrushing-stratification.mpp"); // MPP reading issue: missing predecessor

      // Scheduled from end
      EXCLUDED_FILES.add("dietetic-phrasing.mpp");

      // Calculated correctly, but incorrect late dates read from MPP by MPXJ
      EXCLUDED_FILES.add("scatterbrained-tambourine.mpp");
      EXCLUDED_FILES.add("valid-wartime.mpp");

      // Summary task logic
      EXCLUDED_FILES.add("oppressive-pitfall.mpp");
      EXCLUDED_FILES.add("scarlet-throughput.mpp");
      EXCLUDED_FILES.add("pulmonary-dove.mpp");
      EXCLUDED_FILES.add("topical-mamma.mpp");
      EXCLUDED_FILES.add("idle-niche.mpp");
      EXCLUDED_FILES.add("madding-portrayal.mpp");
      EXCLUDED_FILES.add("apparent-canyon.mpp");
      EXCLUDED_FILES.add("photosensitive-bluebook.mpp");
      EXCLUDED_FILES.add("orange-fur.mpp");
      EXCLUDED_FILES.add("false-rustler.mpp");
      EXCLUDED_FILES.add("bluff-shoelace.mpp");
      EXCLUDED_FILES.add("emaciated-subjectivist.mpp");
      EXCLUDED_FILES.add("blissful-schism.mpp");
      EXCLUDED_FILES.add("dread-hydrochemistry.mpp");

      // Split task
      EXCLUDED_FILES.add("worrisome-definition.mpp");
      EXCLUDED_FILES.add("texan-jealousy.mpp");
      EXCLUDED_FILES.add("unsupportable-reliving.mpp");
      EXCLUDED_FILES.add("auburn-dugout.mpp");
      EXCLUDED_FILES.add("oval-ambulance.mpp");
      EXCLUDED_FILES.add("passive-inhibitor.mpp");
      EXCLUDED_FILES.add("hypophyseal-comedian.mpp");
      EXCLUDED_FILES.add("long-giant.mpp");
      EXCLUDED_FILES.add("lumbar-kimono.mpp");
      EXCLUDED_FILES.add("seasonal-standing.mpp");
      EXCLUDED_FILES.add("undisputed-empire.mpp");
      EXCLUDED_FILES.add("uninvited-friend.mpp");
   }

   private static final Set<String> INCLUDED_FILES = new HashSet<>();
   static
   {
      //INCLUDED_FILES.add("".toLowerCase());
   }
}
