/*
 * file:       TaskCostsTest.java
 * author:     Jon Iles
 * copyright:  (c) Packwood Software 2014
 * date:       10/11/2014
 */

/*
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by the
 * Free Software Foundation; either version 2.1 of the License, or (at your
 * option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library; if not, write to the Free Software Foundation, Inc.,
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
 */

package net.sf.mpxj.junit.task;

import static net.sf.mpxj.junit.MpxjAssert.*;
import static org.junit.Assert.*;

import java.io.File;
import java.io.FileFilter;

import net.sf.mpxj.MPXJException;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.Task;
import net.sf.mpxj.junit.MpxjTestData;
import net.sf.mpxj.mpd.MPDDatabaseReader;
import net.sf.mpxj.mpx.MPXReader;
import net.sf.mpxj.reader.ProjectReader;
import net.sf.mpxj.reader.ProjectReaderUtility;
import net.sf.mpxj.utility.NumberUtility;

import org.junit.Test;

/**
 * Tests to ensure task custom costs are correctly handled.
 */
public class TaskCostsTest
{
   /**
    * Test to validate the custom costs in files saved by different versions of MS Project.
    */
   @Test public void testTaskNumbers() throws MPXJException
   {
      File testDataDir = new File(MpxjTestData.filePath("generated/task-costs"));
      for (File file : testDataDir.listFiles(new FileFilter()
      {
         @Override public boolean accept(File pathname)
         {
            return pathname.getName().startsWith("task-costs");
         }
      }))
      {
         testTaskCosts(file);
      }
   }

   /**
    * Test an individual project.
    * 
    * @param file project file
    */
   private void testTaskCosts(File file) throws MPXJException
   {
      ProjectReader reader = ProjectReaderUtility.getProjectReader(file.getName());
      if (reader instanceof MPDDatabaseReader)
      {
         assumeJvm();
      }

      int maxIndex = reader instanceof MPXReader ? 3 : 10;
      ProjectFile project = reader.read(file);
      for (int index = 1; index <= maxIndex; index++)
      {
         Task task = project.getTaskByID(Integer.valueOf(index));
         assertEquals("Cost" + index, task.getName());
         testTaskCosts(file, task, index, maxIndex);
      }
   }

   /**
    * Test the cost values for a task.
    * 
    * @param file parent file
    * @param task task
    * @param testIndex index of number being tested
    * @param maxIndex maximum number of custom fields to expect in this file
    */
   private void testTaskCosts(File file, Task task, int testIndex, int maxIndex)
   {
      for (int index = 1; index <= maxIndex; index++)
      {
         int expectedValue = testIndex == index ? index : 0;
         int actualValue = NumberUtility.getInt(task.getCost(index));

         assertEquals(file.getName() + " Cost" + index, expectedValue, actualValue);
      }
   }
}