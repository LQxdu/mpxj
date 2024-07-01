package net.sf.mpxj.cpm;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import net.sf.mpxj.Duration;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Relation;
import net.sf.mpxj.Task;
import net.sf.mpxj.TaskField;
import net.sf.mpxj.TimeUnit;
import net.sf.mpxj.reader.UniversalProjectReader;

public class CpmTest
{
   public static void main(String[] argv) throws Exception
   {
      new CpmTest().process("/Users/joniles/Downloads/cpm-sample-1.mpp");
   }

/*
   public void process() throws Exception
   {
      ProjectFile file = new ProjectFile();
      file.setDefaultCalendar(file.addDefaultBaseCalendar());

      Task t1 = file.addTask();
      t1.setName("t1");
      t1.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t2 = file.addTask();
      t2.setName("t2");
      t2.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t3 = file.addTask();
      t3.setName("t3");
      t3.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t4 = file.addTask();
      t4.setName("t4");
      t4.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t5 = file.addTask();
      t5.setName("t5");
      t5.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t6 = file.addTask();
      t6.setName("t6");
      t6.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t7 = file.addTask();
      t7.setName("t7");
      t7.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t8 = file.addTask();
      t8.setName("t8");
      t8.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      Task t9 = file.addTask();
      t9.setName("t9");
      t9.setDuration(Duration.getInstance(3, TimeUnit.DAYS));

      t3.addPredecessor(new Relation.Builder().targetTask(t1).lag(Duration.getInstance(2, TimeUnit.DAYS)));
      t4.addPredecessor(new Relation.Builder().targetTask(t1));

      t5.addPredecessor(new Relation.Builder().targetTask(t4));
      t5.addPredecessor(new Relation.Builder().targetTask(t2));

      t6.addPredecessor(new Relation.Builder().targetTask(t2));

      t7.addPredecessor(new Relation.Builder().targetTask(t3));

      t8.addPredecessor(new Relation.Builder().targetTask(t5));
      t8.addPredecessor(new Relation.Builder().targetTask(t6));

      t8.addPredecessor(new Relation.Builder().targetTask(t6));

      t9.addPredecessor(new Relation.Builder().targetTask(t6));

      //List<Task> result = new DepthFirstGraphSort(file).sort();
      new Schedule(file).process(LocalDateTime.of(2024, 7, 1, 8, 0));

      DateTimeFormatter df = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
      file.getTasks().stream().map(t -> t.toString() + "\tEarlyStart=" + df.format(t.getEarlyStart()) + "\t" + df.format(t.getEarlyFinish())).forEach(System.out::println);
   }
*/

   public void process(String file) throws Exception
   {
      ProjectFile baseline = new UniversalProjectReader().read(file);
      ProjectFile working = new UniversalProjectReader().read(file);

      new Schedule(working).process(working.getEarliestStartDate());

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
      LocalDateTime workingDate = (LocalDateTime)baseline.get(field);

      System.out.println(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);
      if (!baselineDate.isEqual(workingDate))
      {
         throw new RuntimeException(baseline + " " + field + " baseline=" + baselineDate + " working=" + workingDate);
      }
   }
}
