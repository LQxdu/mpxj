/*
 * file:       PrimaveraXERFileWriter.java
 * author:     Jon Iles
 * copyright:  (c) Packwood Software 2023
 * date:       07/03/2023
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

package net.sf.mpxj.primavera;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import net.sf.mpxj.ActivityCode;
import net.sf.mpxj.ActivityCodeValue;
import net.sf.mpxj.ActivityStatus;
import net.sf.mpxj.ActivityType;
import net.sf.mpxj.AssignmentField;
import net.sf.mpxj.Availability;
import net.sf.mpxj.CalendarType;
import net.sf.mpxj.CostAccount;
import net.sf.mpxj.CostRateTableEntry;
import net.sf.mpxj.CustomField;
import net.sf.mpxj.Duration;
import net.sf.mpxj.ExpenseCategory;
import net.sf.mpxj.ExpenseItem;
import net.sf.mpxj.FieldContainer;
import net.sf.mpxj.FieldType;
import net.sf.mpxj.Location;
import net.sf.mpxj.Notes;
import net.sf.mpxj.NotesTopic;
import net.sf.mpxj.ParentNotes;
import net.sf.mpxj.PercentCompleteType;
import net.sf.mpxj.ProjectCalendar;
import net.sf.mpxj.ProjectField;
import net.sf.mpxj.ProjectFile;
import net.sf.mpxj.ProjectProperties;
import net.sf.mpxj.Relation;
import net.sf.mpxj.Resource;
import net.sf.mpxj.ResourceAssignment;
import net.sf.mpxj.ResourceField;
import net.sf.mpxj.ResourceType;
import net.sf.mpxj.Step;
import net.sf.mpxj.StructuredNotes;
import net.sf.mpxj.Task;
import net.sf.mpxj.TaskField;
import net.sf.mpxj.TimeUnit;
import net.sf.mpxj.UserDefinedField;
import net.sf.mpxj.WorkContour;
import net.sf.mpxj.common.BooleanHelper;
import net.sf.mpxj.common.CharsetHelper;
import net.sf.mpxj.common.FieldTypeHelper;
import net.sf.mpxj.common.NumberHelper;
import net.sf.mpxj.common.Pair;
import net.sf.mpxj.writer.AbstractProjectWriter;

/**
 * XER file writer.
 */
public class PrimaveraXERFileWriter extends AbstractProjectWriter
{
   /**
    * Sets the character encoding used when writing an XER file.
    *
    * @param encoding encoding name
    */
   public void setEncoding(String encoding)
   {
      m_encoding = encoding;
   }

   /**
    * Alternative way to set the file encoding. If both an encoding name and a Charset instance
    * are supplied, the Charset instance is used.
    *
    * @param charset Charset used when writing the file
    */
   public void setCharset(Charset charset)
   {
      m_charset = charset;
   }

   @Override public void write(ProjectFile projectFile, OutputStream outputStream) throws IOException
   {
      m_file = projectFile;
      m_writer = new XerWriter(projectFile, new OutputStreamWriter(outputStream, getCharset()));
      m_rateObjectID = new ObjectSequence(1);
      m_noteObjectID = new ObjectSequence(1);

      // We need to do this first to ensure the default topic is created if required
      populateWbsNotes();
      populateActivityNotes();

      try
      {
         writeHeader();
         writeExpenseCategories();
         writeCurrencies();
         writeLocations();
         writeNoteTypes();
         writeResourceCurves();
         writeUdfDefinitions();
         writeCostAccounts();
         writeRoles();
         writeProject();
         writeRoleRates();
         writeCalendars();
         writeWBS();
         writeResources();
         writeActivityCodes();
         writeResourceRates();
         writeActivities();
         writeWbsNotes();
         writeActivityCodeValues();
         writeActivitySteps();
         writeExpenseItems();
         writeActivityNotes();
         writePredecessors();
         writeResourceAssignments();
         writeActivityCodeAssignments();
         writeUdfValues();
         m_writer.writeTrailer();

         m_writer.flush();
      }

      finally
      {
         m_writer = null;
      }
   }

   /**
    * Retrieve the Charset used to write the file.
    *
    * @return Charset instance
    */
   private Charset getCharset()
   {
      Charset result = m_charset;
      if (result == null)
      {
         // We default to CP1252 as this seems to be the most common encoding
         result = m_encoding == null ? CharsetHelper.CP1252 : Charset.forName(m_encoding);
      }
      return result;
   }

   /**
    * Write the file header.
    */
   private void writeHeader()
   {
      Object[] data =
      {
         "ERMHDR",
         "20.12",
         new DateOnly(m_file.getProjectProperties().getCurrentDate()),
         "Project",
         "admin",
         "admin",
         "dbxDatabaseNoName",
         "Project Management",
         CURRENCY_COLUMNS.get("curr_short_name")
      };

      m_writer.writeHeader(data);
   }

   /**
    * Write currencies.
    */
   private void writeCurrencies()
   {
      m_writer.writeTable("CURRTYPE", CURRENCY_COLUMNS);
      m_writer.writeRecord(CURRENCY_COLUMNS.values().stream());
   }

   /**
    * Write roles.
    */
   private void writeRoles()
   {
      m_writer.writeTable("ROLES", ROLE_COLUMNS);
      m_file.getResources().stream().filter(Resource::getRole).sorted(Comparator.comparing(Resource::getUniqueID)).forEach(r -> m_writer.writeRecord(ROLE_COLUMNS, r));
   }

   /**
    * Write role rates.
    */
   private void writeRoleRates()
   {
      m_writer.writeTable("ROLERATE", ROLE_RATE_COLUMNS);
      m_file.getResources().stream().filter(Resource::getRole).sorted(Comparator.comparing(Resource::getUniqueID)).forEach(r -> writeCostRateTableEntries(ROLE_RATE_COLUMNS, r));
   }

   /**
    * Write resource rates.
    */
   private void writeResourceRates()
   {
      m_writer.writeTable("RSRCRATE", RESOURCE_RATE_COLUMNS);
      m_file.getResources().stream().filter(r -> !r.getRole().booleanValue()).sorted(Comparator.comparing(Resource::getUniqueID)).forEach(r -> writeCostRateTableEntries(RESOURCE_RATE_COLUMNS, r));
   }

   /**
    * Write cost rate table entries.
    *
    * @param columns column definitions
    * @param resource parent resource
    */
   private void writeCostRateTableEntries(Map<String, ExportFunction<Map<String, Object>>> columns, Resource resource)
   {
      resource.getCostRateTable(0).stream().filter(e -> e != CostRateTableEntry.DEFAULT_ENTRY).forEach(e -> writeCostRateTableEntry(columns, resource, e));
   }

   /**
    * Write a cost rate table entry.
    *
    * @param columns column definitions
    * @param resource parent resource
    * @param entry cost rate table entry
    */
   private void writeCostRateTableEntry(Map<String, ExportFunction<Map<String, Object>>> columns, Resource resource, CostRateTableEntry entry)
   {
      Map<String, Object> map = new HashMap<>();
      map.put("object_id", m_rateObjectID.getNext());
      map.put("entity_id", resource.getUniqueID());
      map.put("cost_per_qty", entry.getRate(0));
      map.put("cost_per_qty2", entry.getRate(1));
      map.put("cost_per_qty3", entry.getRate(2));
      map.put("cost_per_qty4", entry.getRate(3));
      map.put("cost_per_qty5", entry.getRate(4));
      map.put("start_date", entry.getStartDate());
      map.put("max_qty_per_hr", getMaxQuantityPerHour(resource, entry));

      m_writer.writeRecord(columns, map);
   }

   /**
    * Write resources.
    */
   private void writeResources()
   {
      m_writer.writeTable("RSRC", RESOURCE_COLUMNS);
      m_file.getResources().stream().filter(r -> !r.getRole().booleanValue()).sorted(Comparator.comparing(Resource::getUniqueID)).forEach(r -> m_writer.writeRecord(RESOURCE_COLUMNS, r));
   }

   /**
    * Write project.
    */
   private void writeProject()
   {
      m_writer.writeTable("PROJECT", PROJECT_COLUMNS);
      m_writer.writeRecord(PROJECT_COLUMNS, m_file.getProjectProperties());
   }

   /**
    * Write calendars.
    */
   private void writeCalendars()
   {
      m_writer.writeTable("CALENDAR", CALENDAR_COLUMNS);
      m_file.getCalendars().stream().sorted(Comparator.comparing(ProjectCalendar::getUniqueID)).map(ProjectCalendarHelper::normalizeCalendar).forEach(c -> m_writer.writeRecord(CALENDAR_COLUMNS, c));
   }

   /**
    * Write WBS.
    */
   private void writeWBS()
   {
      m_writer.writeTable("PROJWBS", WBS_COLUMNS);
      m_file.getTasks().stream().filter(Task::getSummary).sorted(Comparator.comparing(Task::getUniqueID)).forEach(t -> m_writer.writeRecord(WBS_COLUMNS, t));
   }

   /**
    * Write activities.
    */
   private void writeActivities()
   {
      m_writer.writeTable("TASK", ACTIVITY_COLUMNS);
      m_file.getTasks().stream().filter(t -> !t.getSummary()).sorted(Comparator.comparing(Task::getUniqueID)).forEach(t -> m_writer.writeRecord(ACTIVITY_COLUMNS, t));
   }

   /**
    * Write predecessors.
    */
   private void writePredecessors()
   {
      m_writer.writeTable("TASKPRED", PREDECESSOR_COLUMNS);
      m_file.getTasks().stream().filter(t -> !t.getSummary()).map(Task::getPredecessors).flatMap(Collection::stream).sorted(Comparator.comparing(Relation::getUniqueID)).forEach(r -> m_writer.writeRecord(PREDECESSOR_COLUMNS, r));
   }

   /**
    * Write resource assignments.
    */
   private void writeResourceAssignments()
   {
      m_writer.writeTable("TASKRSRC", RESOURCE_ASSIGNMENT_COLUMNS);
      m_file.getResourceAssignments().stream().sorted(Comparator.comparing(ResourceAssignment::getUniqueID)).forEach(t -> m_writer.writeRecord(RESOURCE_ASSIGNMENT_COLUMNS, t));
   }

   /**
    * Write cost accounts.
    */
   private void writeCostAccounts()
   {
      m_writer.writeTable("ACCOUNT", COST_ACCOUNT_COLUMNS);
      m_file.getCostAccounts().stream().sorted(Comparator.comparing(CostAccount::getUniqueID)).forEach(a -> m_writer.writeRecord(COST_ACCOUNT_COLUMNS, a));
   }

   /**
    * Write expense categories.
    */
   private void writeExpenseCategories()
   {
      m_writer.writeTable("COSTTYPE", EXPENSE_CATEGORY_COLUMNS);
      m_file.getExpenseCategories().stream().sorted(Comparator.comparing(ExpenseCategory::getUniqueID)).forEach(a -> m_writer.writeRecord(EXPENSE_CATEGORY_COLUMNS, a));
   }

   /**
    * Write locations.
    */
   private void writeLocations()
   {
      if (m_file.getLocations().isEmpty())
      {
         return;
      }

      m_writer.writeTable("LOCATION", LOCATION_COLUMNS);
      m_file.getLocations().stream().sorted(Comparator.comparing(Location::getUniqueID)).forEach(l -> m_writer.writeRecord(LOCATION_COLUMNS, l));
   }

   /**
    * Write expense items.
    */
   private void writeExpenseItems()
   {
      m_writer.writeTable("PROJCOST", EXPENSE_ITEM_COLUMNS);
      m_file.getTasks().stream().filter(t -> !t.getSummary()).map(Task::getExpenseItems).flatMap(Collection::stream).sorted(Comparator.comparing(ExpenseItem::getUniqueID)).forEach(i -> m_writer.writeRecord(EXPENSE_ITEM_COLUMNS, i));
   }

   /**
    * Write resource curves.
    */
   private void writeResourceCurves()
   {
      m_writer.writeTable("RSRCCURVDATA", RESOURCE_CURVE_COLUMNS);
      m_file.getWorkContours().stream().filter(w -> !w.isContourManual() && !w.isContourFlat()).sorted(Comparator.comparing(WorkContour::getUniqueID)).forEach(r -> m_writer.writeRecord(RESOURCE_CURVE_COLUMNS, r));
   }

   /**
    * Write activity steps.
    */
   private void writeActivitySteps()
   {
      m_writer.writeTable("TASKPROC", ACTIVITY_STEP_COLUMNS);
      m_file.getTasks().stream().filter(t -> !t.getSummary()).map(Task::getSteps).flatMap(Collection::stream).sorted(Comparator.comparing(Step::getUniqueID)).forEach(s -> m_writer.writeRecord(ACTIVITY_STEP_COLUMNS, s));
   }

   /**
    * Write activity codes.
    */
   private void writeActivityCodes()
   {
      m_writer.writeTable("ACTVTYPE", ACTIVITY_CODE_COLUMNS);
      m_file.getActivityCodes().stream().sorted(Comparator.comparing(ActivityCode::getUniqueID)).forEach(c -> m_writer.writeRecord(ACTIVITY_CODE_COLUMNS, c));
   }

   /**
    * Write activity code values.
    */
   private void writeActivityCodeValues()
   {
      m_writer.writeTable("ACTVCODE", ACTIVITY_CODE_VALUE_COLUMNS);
      m_file.getActivityCodes().stream().map(ActivityCode::getValues).flatMap(Collection::stream).sorted(Comparator.comparing(ActivityCodeValue::getUniqueID)).forEach(v -> m_writer.writeRecord(ACTIVITY_CODE_VALUE_COLUMNS, v));
   }

   /**
    * Write activity code assignments.
    */
   private void writeActivityCodeAssignments()
   {
      m_writer.writeTable("TASKACTV", ACTIVITY_CODE_ASSIGNMENT_COLUMNS);
      m_file.getTasks().stream().filter(t -> !t.getSummary()).collect(Collectors.toMap(t -> t, Task::getActivityCodes, (u, v) -> u, TreeMap::new)).forEach(this::writeActivityCodeAssignments);
   }

   /**
    * Write activity code assignments for a task.
    *
    * @param task parent task
    * @param values activity code values
    */
   private void writeActivityCodeAssignments(Task task, List<ActivityCodeValue> values)
   {
      values.stream().sorted(Comparator.comparing(ActivityCodeValue::getUniqueID)).forEach(v -> m_writer.writeRecord(ACTIVITY_CODE_ASSIGNMENT_COLUMNS, new Pair<>(task, v)));
   }

   /**
    * Write UDF definitions.
    */
   private void writeUdfDefinitions()
   {
      m_writer.writeTable("UDFTYPE", UDF_TYPE_COLUMNS);
      UdfHelper.getUserDefinedFieldsSet(m_file).stream().map(f -> new Pair<>(f, m_file.getCustomFields().get(f))).sorted(Comparator.comparing(p -> p.getSecond() == null ? Integer.valueOf(FieldTypeHelper.getFieldID(p.getFirst())) : p.getSecond().getUniqueID())).forEach(p -> m_writer.writeRecord(UDF_TYPE_COLUMNS, p));
   }

   /**
    * Write UDF values.
    */
   private void writeUdfValues()
   {
      Set<FieldType> fields = UdfHelper.getUserDefinedFieldsSet(m_file);

      List<Map<String, Object>> records = new ArrayList<>();
      records.addAll(writeActivityUdfValues(fields));
      records.addAll(writeWbsUdfValues(fields));
      records.addAll(writeResourceUdfValues(fields));
      records.addAll(writeResourceAssignmentUdfValues(fields));
      records.addAll(writeProjectUdfValues(fields));
      records.removeIf(Objects::isNull);

      records.sort((r1, r2) -> {
         Integer id1 = (Integer) r1.get("udf_type_id");
         Integer id2 = (Integer) r2.get("udf_type_id");
         int result = id1.compareTo(id2);
         if (result == 0)
         {
            id1 = (Integer) r1.get("fk_id");
            id2 = (Integer) r2.get("fk_id");
            result = id1.compareTo(id2);
         }
         return result;
      });

      m_writer.writeTable("UDFVALUE", UDF_ASSIGNMENT_COLUMNS);
      records.forEach(r -> m_writer.writeRecord(UDF_ASSIGNMENT_COLUMNS, r));
   }

   /**
    * Write activity UDF values.
    *
    * @param allFields UDF fields
    * @return list of UDF records
    */
   private List<Map<String, Object>> writeActivityUdfValues(Set<FieldType> allFields)
   {
      Set<FieldType> fields = allFields.stream().filter(f -> "TASK".equals(FieldTypeClassHelper.getXerFromInstance(f))).collect(Collectors.toSet());
      return m_file.getTasks().stream().filter(t -> !t.getSummary()).map(t -> writeUdfAssignments(fields, TaskField.UNIQUE_ID, t)).flatMap(Collection::stream).collect(Collectors.toList());
   }

   /**
    * Write WBS UDF values.
    *
    * @param allFields UDF fields
    * @return list of UDF records
    */
   private List<Map<String, Object>> writeWbsUdfValues(Set<FieldType> allFields)
   {
      Set<FieldType> fields = allFields.stream().filter(f -> "PROJWBS".equals(FieldTypeClassHelper.getXerFromInstance(f))).collect(Collectors.toSet());
      return m_file.getTasks().stream().filter(Task::getSummary).map(t -> writeUdfAssignments(fields, TaskField.UNIQUE_ID, t)).flatMap(Collection::stream).collect(Collectors.toList());
   }

   /**
    * Write resource UDF values.
    *
    * @param allFields UDF fields
    * @return list of UDF records
    */
   private List<Map<String, Object>> writeResourceUdfValues(Set<FieldType> allFields)
   {
      Set<FieldType> fields = allFields.stream().filter(f -> "RSRC".equals(FieldTypeClassHelper.getXerFromInstance(f))).collect(Collectors.toSet());
      return m_file.getResources().stream().map(r -> writeUdfAssignments(fields, ResourceField.UNIQUE_ID, r)).flatMap(Collection::stream).collect(Collectors.toList());
   }

   /**
    * Write resource assignment UDF values.
    *
    * @param allFields UDF fields
    * @return list of UDF records
    */
   private List<Map<String, Object>> writeResourceAssignmentUdfValues(Set<FieldType> allFields)
   {
      Set<FieldType> fields = allFields.stream().filter(f -> "TASKRSRC".equals(FieldTypeClassHelper.getXerFromInstance(f))).collect(Collectors.toSet());
      return m_file.getResourceAssignments().stream().map(a -> writeUdfAssignments(fields, AssignmentField.UNIQUE_ID, a)).flatMap(Collection::stream).collect(Collectors.toList());
   }

   /**
    * Write project UDF values.
    *
    * @param allFields UDF fields
    * @return list of UDF records
    */
   private List<Map<String, Object>> writeProjectUdfValues(Set<FieldType> allFields)
   {
      Set<FieldType> fields = allFields.stream().filter(f -> "PROJECT".equals(FieldTypeClassHelper.getXerFromInstance(f))).collect(Collectors.toSet());
      return writeUdfAssignments(fields, ProjectField.UNIQUE_ID, m_file.getProjectProperties());
   }

   /**
    * Write UDF assignments from a FieldContainer instance.
    *
    * @param fields UDF fields to write
    * @param uniqueID unique ID field type
    * @param container field container
    * @return list of UDF records
    */
   private List<Map<String, Object>> writeUdfAssignments(Set<FieldType> fields, FieldType uniqueID, FieldContainer container)
   {
      Integer projectID = container instanceof Resource ? null : m_file.getProjectProperties().getUniqueID();
      Integer entityId = (Integer) container.get(uniqueID);
      return fields.stream().map(f -> writeUdfAssignment(f, projectID, entityId, container.get(f))).collect(Collectors.toList());
   }

   /**
    * Write a UDF assignment record.
    *
    * @param type field type
    * @param projectID parent project ID
    * @param entityID parent entity ID
    * @param value field value
    * @return UDF assignment record
    */
   private Map<String, Object> writeUdfAssignment(FieldType type, Integer projectID, Integer entityID, Object value)
   {
      if (value == null)
      {
         return null;
      }

      Map<String, Object> record = new HashMap<>();

      record.put("udf_type_id", getUdfTypeID(type));
      record.put("fk_id", entityID);
      record.put("proj_id", projectID);

      switch (type.getDataType())
      {
         case DURATION:
         case STRING:
         {
            record.put("udf_text", value.toString());
            break;
         }

         case CURRENCY:
         case INTEGER:
         case SHORT:
         case NUMERIC:
         {
            record.put("udf_number", value);
            break;
         }

         case BINARY:
         {
            // Ignore binary values
            break;
         }

         case DATE:
         {
            record.put("udf_date", value);
            break;
         }

         case BOOLEAN:
         {
            record.put("udf_number", (BooleanHelper.getBoolean((Boolean) value) ? Integer.valueOf(1) : Integer.valueOf(0)));
            break;
         }

         default:
         {
            throw new RuntimeException("Unconvertible data type: " + type.getDataType());
         }
      }

      return record;
   }

   /**
    * Write note topics.
    */
   private void writeNoteTypes()
   {
      m_writer.writeTable("MEMOTYPE", NOTE_TYPE_COLUMNS);
      m_file.getNotesTopics().stream().sorted(Comparator.comparing(NotesTopic::getUniqueID)).forEach(n -> m_writer.writeRecord(NOTE_TYPE_COLUMNS, n));
   }

   /**
    * Write WBS notes.
    */
   private void writeWbsNotes()
   {
      m_writer.writeTable("WBSMEMO", WBS_NOTE_COLUMNS);
      m_wbsNotes.forEach(n -> m_writer.writeRecord(WBS_NOTE_COLUMNS, n));
   }

   /**
    * Write activity notes.
    */
   private void writeActivityNotes()
   {
      m_writer.writeTable("TASKMEMO", ACTIVITY_NOTE_COLUMNS);
      m_activityNotes.forEach(n -> m_writer.writeRecord(ACTIVITY_NOTE_COLUMNS, n));
   }

   /**
    * Create notes records for all WBS.
    */
   private void populateWbsNotes()
   {
      m_wbsNotes = populateNotes(m_file.getTasks().stream().filter(Task::getSummary));
   }

   /**
    * Create notes records for all activities.
    */
   private void populateActivityNotes()
   {
      m_activityNotes = populateNotes(m_file.getTasks().stream().filter(t -> !t.getSummary()));
   }

   /**
    * Create notes records from a stream of tasks.
    *
    * @param stream tasks
    * @return notes records
    */
   private List<Map<String, Object>> populateNotes(Stream<Task> stream)
   {
      Map<Task, List<List<Notes>>> nestedList = stream.collect(Collectors.groupingBy(t -> t, LinkedHashMap::new, Collectors.mapping(t -> expandParentNotes(t.getNotesObject()), Collectors.toList())));
      Map<Task, List<StructuredNotes>> flatList = nestedList.entrySet().stream().collect(Collectors.toMap(Map.Entry::getKey, e -> e.getValue().stream().flatMap(Collection::stream).map(this::createStructuredNotes).collect(Collectors.toList())));
      return flatList.entrySet().stream().map(e -> e.getValue().stream().map(n -> createNotesMap(e.getKey(), n)).collect(Collectors.toList())).flatMap(Collection::stream).sorted(Comparator.comparing(n -> (Integer) n.get("entity_memo_id"))).collect(Collectors.toList());
   }

   /**
    * Expand a ParentNotes instance into a list of notes.
    *
    * @param notes Notes instance
    * @return list of notes
    */
   private List<Notes> expandParentNotes(Notes notes)
   {
      if (notes == null)
      {
         return Collections.emptyList();
      }

      if (notes instanceof ParentNotes)
      {
         return ((ParentNotes) notes).getChildNotes();
      }

      return Collections.singletonList(notes);
   }

   /**
    * Convert a "flat" Notes instance into structured notes.
    *
    * @param notes Notes instance
    * @return StructuredNotes instance
    */
   private StructuredNotes createStructuredNotes(Notes notes)
   {
      if (notes instanceof StructuredNotes)
      {
         return (StructuredNotes) notes;
      }

      return new StructuredNotes(m_noteObjectID.getNext(), m_file.getNotesTopics().getDefaultTopic(), notes);
   }

   /**
    * Create a notes record.
    *
    * @param task parent task
    * @param notes notes data
    * @return notes record
    */
   private Map<String, Object> createNotesMap(Task task, StructuredNotes notes)
   {
      Map<String, Object> map = new HashMap<>();
      map.put("entity_memo_id", notes.getUniqueID());
      map.put("proj_id", task.getParentFile().getProjectProperties().getUniqueID());
      map.put("memo_type_id", notes.getTopicID());
      map.put("entity_id", task.getUniqueID());
      map.put("entity_memo", notes.getNotes());
      return map;
   }

   /**
    * Retrieve a MaxUnits instance for the max quantity per hour field.
    *
    * @param resource parent resource
    * @param entry cost rate table entry
    * @return MaxUnits instance
    */
   private MaxUnits getMaxQuantityPerHour(Resource resource, CostRateTableEntry entry)
   {
      Availability availability = resource.getAvailability().getEntryByDate(entry.getStartDate());
      return availability == null ? MaxUnits.ZERO : new MaxUnits(availability.getUnits());
   }

   /**
    * Calculate actual regular work for a resource assignment.
    *
    * @param assignment resource assignment
    * @return actual regular work
    */
   private static Duration getActualRegularWork(ResourceAssignment assignment)
   {
      ProjectProperties properties = assignment.getParentFile().getProjectProperties();
      Duration actualWork = assignment.getActualWork() == null ? Duration.getInstance(0, TimeUnit.HOURS) : assignment.getActualWork().convertUnits(TimeUnit.HOURS, properties);
      Duration actualOvertimeWork = assignment.getActualOvertimeWork() == null ? Duration.getInstance(0, TimeUnit.HOURS) : assignment.getActualOvertimeWork().convertUnits(TimeUnit.HOURS, properties);
      return Duration.getInstance(actualWork.getDuration() - actualOvertimeWork.getDuration(), TimeUnit.HOURS);
   }

   /**
    * Calculate actual regular cost for a resource assignment.
    *
    * @param assignment resource assignment
    * @return actual regular cost
    */
   private static Double getActualRegularCost(ResourceAssignment assignment)
   {
      double actualCost = NumberHelper.getDouble(assignment.getActualCost());
      double actualOvertimeCost = NumberHelper.getDouble(assignment.getActualOvertimeCost());
      return Double.valueOf(actualCost - actualOvertimeCost);
   }

   /**
    * Determine the UDF Type unique ID.
    *
    * @param type UDF field type
    * @return unique ID
    */
   private static Integer getUdfTypeID(FieldType type)
   {
      return type instanceof UserDefinedField ? ((UserDefinedField) type).getUniqueID() : Integer.valueOf(FieldTypeHelper.getFieldID(type));
   }

   /**
    * Determine the UDF type name.
    *
    * @param type UDF field type
    * @return UDF type name
    */
   private static String getUdfTypeName(FieldType type)
   {
      if (type instanceof UserDefinedField)
      {
         return type.name();
      }

      return "user_field_" + getUdfTypeID(type);
   }

   /**
    * Determine the UDF type label.
    *
    * @param type UDF field type
    * @param field custom field for the field type
    * @return label text
    */
   private static String getUdfTypeLabel(FieldType type, CustomField field)
   {
      return field != null && field.getAlias() != null && !field.getAlias().isEmpty() ? field.getAlias() : type.getName();
   }

   /**
    * Determine if a location is a city.
    *
    * @param location location
    * @return true if location is a city
    */
   private static boolean locationIsCity(Location location)
   {
      return location.getCity() != null && !location.getCity().isEmpty() &&
         location.getState() != null && !location.getState().isEmpty() &&
         location.getStateCode() != null && !location.getStateCode().isEmpty() &&
         location.getCountry() != null && !location.getCountry().isEmpty() &&
         location.getCountryCode() != null && !location.getCountryCode().isEmpty();
   }

   private String m_encoding;
   private Charset m_charset;
   private ProjectFile m_file;
   private XerWriter m_writer;
   private ObjectSequence m_rateObjectID;
   private ObjectSequence m_noteObjectID;
   private List<Map<String, Object>> m_wbsNotes;
   private List<Map<String, Object>> m_activityNotes;

   interface ExportFunction<T>
   {
      Object apply(T source);
   }

   private static final Map<String, Object> CURRENCY_COLUMNS = new LinkedHashMap<>();
   static
   {
      CURRENCY_COLUMNS.put("curr_id", "1");
      CURRENCY_COLUMNS.put("decimal_digit_cnt", "2");
      CURRENCY_COLUMNS.put("curr_symbol", "$");
      CURRENCY_COLUMNS.put("decimal_symbol", ".");
      CURRENCY_COLUMNS.put("digit_group_symbol", ",");
      CURRENCY_COLUMNS.put("pos_curr_fmt_type", "#1.1");
      CURRENCY_COLUMNS.put("neg_curr_fmt_type", "(#1.1)");
      CURRENCY_COLUMNS.put("curr_type", "US Dollar");
      CURRENCY_COLUMNS.put("curr_short_name", "USD");
      CURRENCY_COLUMNS.put("group_digit_cnt", "3");
      CURRENCY_COLUMNS.put("base_exch_rate", "1");
   }

   private static final Map<String, ExportFunction<Resource>> ROLE_COLUMNS = new LinkedHashMap<>();
   static
   {
      ROLE_COLUMNS.put("role_id", r -> r.getUniqueID());
      ROLE_COLUMNS.put("parent_role_id", r -> r.getParentResourceUniqueID());
      ROLE_COLUMNS.put("seq_num", r -> r.getSequenceNumber());
      ROLE_COLUMNS.put("role_name", r -> r.getName());
      ROLE_COLUMNS.put("role_short_name", r -> r.getResourceID());
      ROLE_COLUMNS.put("pobs_id", r -> "");
      ROLE_COLUMNS.put("def_cost_qty_link_flag", r -> Boolean.valueOf(r.getCalculateCostsFromUnits()));
      ROLE_COLUMNS.put("cost_qty_type", r -> "QT_Hour");
      ROLE_COLUMNS.put("role_descr", r -> r.getNotesObject());
      ROLE_COLUMNS.put("last_checksum", r -> "");
   }

   private static final Map<String, ExportFunction<Map<String, Object>>> ROLE_RATE_COLUMNS = new LinkedHashMap<>();
   static
   {
      ROLE_RATE_COLUMNS.put("role_rate_id", m -> m.get("object_id"));
      ROLE_RATE_COLUMNS.put("role_id", m -> m.get("entity_id"));
      ROLE_RATE_COLUMNS.put("cost_per_qty", m -> m.get("cost_per_qty"));
      ROLE_RATE_COLUMNS.put("cost_per_qty2", m -> m.get("cost_per_qty2"));
      ROLE_RATE_COLUMNS.put("cost_per_qty3", m -> m.get("cost_per_qty3"));
      ROLE_RATE_COLUMNS.put("cost_per_qty4", m -> m.get("cost_per_qty4"));
      ROLE_RATE_COLUMNS.put("cost_per_qty5", m -> m.get("cost_per_qty5"));
      ROLE_RATE_COLUMNS.put("start_date", m -> m.get("start_date"));
      ROLE_RATE_COLUMNS.put("max_qty_per_hr", m -> m.get("max_qty_per_hr"));
   }

   private static final Map<String, ExportFunction<Map<String, Object>>> RESOURCE_RATE_COLUMNS = new LinkedHashMap<>();
   static
   {
      RESOURCE_RATE_COLUMNS.put("rsrc_rate_id", m -> m.get("object_id"));
      RESOURCE_RATE_COLUMNS.put("rsrc_id", m -> m.get("entity_id"));
      RESOURCE_RATE_COLUMNS.put("max_qty_per_hr", m -> m.get("max_qty_per_hr"));
      RESOURCE_RATE_COLUMNS.put("cost_per_qty", m -> m.get("cost_per_qty"));
      RESOURCE_RATE_COLUMNS.put("start_date", m -> m.get("start_date"));
      RESOURCE_RATE_COLUMNS.put("shift_period_id", m -> "");
      RESOURCE_RATE_COLUMNS.put("cost_per_qty2", m -> m.get("cost_per_qty2"));
      RESOURCE_RATE_COLUMNS.put("cost_per_qty3", m -> m.get("cost_per_qty3"));
      RESOURCE_RATE_COLUMNS.put("cost_per_qty4", m -> m.get("cost_per_qty4"));
      RESOURCE_RATE_COLUMNS.put("cost_per_qty5", m -> m.get("cost_per_qty5"));
   }

   private static final Map<String, ExportFunction<Resource>> RESOURCE_COLUMNS = new LinkedHashMap<>();
   static
   {
      RESOURCE_COLUMNS.put("rsrc_id", r -> r.getUniqueID());
      RESOURCE_COLUMNS.put("parent_rsrc_id", r -> r.getParentResourceUniqueID());
      RESOURCE_COLUMNS.put("clndr_id", r -> r.getCalendarUniqueID());
      RESOURCE_COLUMNS.put("role_id", r -> "");
      RESOURCE_COLUMNS.put("shift_id", r -> "");
      RESOURCE_COLUMNS.put("user_id", r -> "");
      RESOURCE_COLUMNS.put("pobs_id", r -> "");
      RESOURCE_COLUMNS.put("guid", r -> r.getGUID());
      RESOURCE_COLUMNS.put("rsrc_seq_num", r -> r.getSequenceNumber());
      RESOURCE_COLUMNS.put("email_addr", r -> r.getEmailAddress());
      RESOURCE_COLUMNS.put("employee_code", r -> r.getCode());
      RESOURCE_COLUMNS.put("office_phone", r -> "");
      RESOURCE_COLUMNS.put("other_phone", r -> "");
      RESOURCE_COLUMNS.put("rsrc_name", r -> r.getName());
      RESOURCE_COLUMNS.put("rsrc_short_name", r -> r.getResourceID());
      RESOURCE_COLUMNS.put("rsrc_title_name", r -> "");
      RESOURCE_COLUMNS.put("def_qty_per_hr", r -> r.getMaxUnits() == null ? null : Double.valueOf(r.getMaxUnits().doubleValue() / 100.0));
      RESOURCE_COLUMNS.put("cost_qty_type", r -> "QT_Hour");
      RESOURCE_COLUMNS.put("ot_factor", r -> "");
      RESOURCE_COLUMNS.put("active_flag", r -> Boolean.valueOf(r.getActive()));
      RESOURCE_COLUMNS.put("auto_compute_act_flag", r -> Boolean.TRUE);
      RESOURCE_COLUMNS.put("def_cost_qty_link_flag", r -> Boolean.valueOf(r.getCalculateCostsFromUnits()));
      RESOURCE_COLUMNS.put("ot_flag", r -> Boolean.FALSE);
      RESOURCE_COLUMNS.put("curr_id", r -> CURRENCY_COLUMNS.get("curr_id"));
      RESOURCE_COLUMNS.put("unit_id", r -> "");
      RESOURCE_COLUMNS.put("rsrc_type", r -> r.getType());
      RESOURCE_COLUMNS.put("location_id", r -> r.getLocationUniqueID());
      RESOURCE_COLUMNS.put("rsrc_notes", r -> r.getNotesObject());
      RESOURCE_COLUMNS.put("load_tasks_flag", r -> "");
      RESOURCE_COLUMNS.put("level_flag", r -> "");
      RESOURCE_COLUMNS.put("last_checksum", r -> "");
   }

   private static final Map<String, ExportFunction<ProjectProperties>> PROJECT_COLUMNS = new LinkedHashMap<>();
   static
   {
      PROJECT_COLUMNS.put("proj_id", p -> p.getUniqueID());
      PROJECT_COLUMNS.put("fy_start_month_num", p -> p.getFiscalYearStartMonth());
      PROJECT_COLUMNS.put("rsrc_self_add_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("allow_complete_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("rsrc_multi_assign_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("checkout_flag", p -> Boolean.FALSE);
      PROJECT_COLUMNS.put("project_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("step_complete_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("cost_qty_recalc_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("batch_sum_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("name_sep_char", p -> ".");
      PROJECT_COLUMNS.put("def_complete_pct_type", p -> PercentCompleteType.DURATION);
      PROJECT_COLUMNS.put("proj_short_name", p -> p.getProjectID());
      PROJECT_COLUMNS.put("acct_id", p -> "");
      PROJECT_COLUMNS.put("orig_proj_id", p -> "");
      PROJECT_COLUMNS.put("source_proj_id", p -> "");
      PROJECT_COLUMNS.put("base_type_id", p -> "");
      PROJECT_COLUMNS.put("clndr_id", p -> p.getDefaultCalendarUniqueID());
      PROJECT_COLUMNS.put("sum_base_proj_id", p -> p.getBaselineProjectUniqueID());
      PROJECT_COLUMNS.put("task_code_base", p -> Integer.valueOf(1000));
      PROJECT_COLUMNS.put("task_code_step", p -> Integer.valueOf(10));
      PROJECT_COLUMNS.put("priority_num", p -> Integer.valueOf(10));
      PROJECT_COLUMNS.put("wbs_max_sum_level", p -> Integer.valueOf(0));
      PROJECT_COLUMNS.put("strgy_priority_num", p -> Integer.valueOf(100));
      PROJECT_COLUMNS.put("last_checksum", p -> "");
      PROJECT_COLUMNS.put("critical_drtn_hr_cnt", p -> Double.valueOf(p.getCriticalSlackLimit().convertUnits(TimeUnit.HOURS, p).getDuration()));
      PROJECT_COLUMNS.put("def_cost_per_qty", p -> new Currency(Double.valueOf(100.0)));
      PROJECT_COLUMNS.put("last_recalc_date", p -> p.getStatusDate());
      PROJECT_COLUMNS.put("plan_start_date", p -> p.getPlannedStart());
      PROJECT_COLUMNS.put("plan_end_date", p -> p.getMustFinishBy());
      PROJECT_COLUMNS.put("scd_end_date", p -> p.getScheduledFinish());
      PROJECT_COLUMNS.put("add_date", p -> p.getCreationDate());
      PROJECT_COLUMNS.put("last_tasksum_date", p -> "");
      PROJECT_COLUMNS.put("fcst_start_date", p -> "");
      PROJECT_COLUMNS.put("def_duration_type", p -> p.getDefaultTaskType());
      PROJECT_COLUMNS.put("task_code_prefix", p -> "");
      PROJECT_COLUMNS.put("guid", p -> p.getGUID());
      PROJECT_COLUMNS.put("def_qty_type", p -> "QT_Hour");
      PROJECT_COLUMNS.put("add_by_name", p -> "admin");
      PROJECT_COLUMNS.put("web_local_root_path", p -> "");
      PROJECT_COLUMNS.put("proj_url", p -> "");
      PROJECT_COLUMNS.put("def_rate_type", p -> RateTypeHelper.getXerFromInstance(Integer.valueOf(0)));
      PROJECT_COLUMNS.put("add_act_remain_flag", p -> Boolean.FALSE);
      PROJECT_COLUMNS.put("act_this_per_link_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("def_task_type", p -> ActivityType.TASK_DEPENDENT);
      PROJECT_COLUMNS.put("act_pct_link_flag", p -> Boolean.FALSE);
      PROJECT_COLUMNS.put("critical_path_type", p -> p.getCriticalActivityType());
      PROJECT_COLUMNS.put("task_code_prefix_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("def_rollup_dates_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("use_project_baseline_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("rem_target_link_flag", p -> Boolean.TRUE);
      PROJECT_COLUMNS.put("reset_planned_flag", p -> Boolean.FALSE);
      PROJECT_COLUMNS.put("allow_neg_act_flag", p -> Boolean.FALSE);
      PROJECT_COLUMNS.put("sum_assign_level", p -> "SL_Taskrsrc");
      PROJECT_COLUMNS.put("last_fin_dates_id", p -> "");
      PROJECT_COLUMNS.put("fintmpl_id", p -> "");
      PROJECT_COLUMNS.put("last_baseline_update_date", p -> "");
      PROJECT_COLUMNS.put("cr_external_key", p -> "");
      PROJECT_COLUMNS.put("apply_actuals_date", p -> "");
      PROJECT_COLUMNS.put("location_id", p -> p.getLocationUniqueID());
      PROJECT_COLUMNS.put("loaded_scope_level", p -> Integer.valueOf(7));
      PROJECT_COLUMNS.put("export_flag", p -> Boolean.valueOf(p.getExportFlag()));
      PROJECT_COLUMNS.put("new_fin_dates_id", p -> "");
      PROJECT_COLUMNS.put("baselines_to_export", p -> "");
      PROJECT_COLUMNS.put("baseline_names_to_export", p -> "");
      PROJECT_COLUMNS.put("next_data_date", p -> "");
      PROJECT_COLUMNS.put("close_period_flag", p -> "");
      PROJECT_COLUMNS.put("sum_refresh_date", p -> "");
      PROJECT_COLUMNS.put("trsrcsum_loaded", p -> "");
      PROJECT_COLUMNS.put("sumtask_loaded", p -> "");
   }

   private static final Map<String, ExportFunction<ProjectCalendar>> CALENDAR_COLUMNS = new LinkedHashMap<>();
   static
   {
      CALENDAR_COLUMNS.put("clndr_id", c -> c.getUniqueID());
      CALENDAR_COLUMNS.put("default_flag", c -> Boolean.valueOf(c.getParentFile().getProjectProperties().getDefaultCalendar() == c));
      CALENDAR_COLUMNS.put("clndr_name", c -> c.getName());
      CALENDAR_COLUMNS.put("proj_id", c -> c.getType() == CalendarType.PROJECT ? c.getParentFile().getProjectProperties().getUniqueID() : null);
      CALENDAR_COLUMNS.put("base_clndr_id", c -> c.getParentUniqueID());
      CALENDAR_COLUMNS.put("last_chng_date", c -> null);
      CALENDAR_COLUMNS.put("clndr_type", c -> c.getType());
      CALENDAR_COLUMNS.put("day_hr_cnt", c -> Integer.valueOf(NumberHelper.getInt(c.getMinutesPerDay()) / 60));
      CALENDAR_COLUMNS.put("week_hr_cnt", c -> Integer.valueOf(NumberHelper.getInt(c.getMinutesPerWeek()) / 60));
      CALENDAR_COLUMNS.put("month_hr_cnt", c -> Integer.valueOf(NumberHelper.getInt(c.getMinutesPerMonth()) / 60));
      CALENDAR_COLUMNS.put("year_hr_cnt", c -> Integer.valueOf(NumberHelper.getInt(c.getMinutesPerYear()) / 60));
      CALENDAR_COLUMNS.put("rsrc_private", c -> Boolean.valueOf(c.getPersonal()));
      CALENDAR_COLUMNS.put("clndr_data", c -> new ProjectCalendarStructuredTextWriter().getCalendarData(c));
   }

   private static final Map<String, ExportFunction<Task>> WBS_COLUMNS = new LinkedHashMap<>();
   static
   {
      WBS_COLUMNS.put("wbs_id", t -> t.getUniqueID());
      WBS_COLUMNS.put("proj_id", t -> t.getParentFile().getProjectProperties().getUniqueID());
      WBS_COLUMNS.put("obs_id", t -> "");
      WBS_COLUMNS.put("seq_num", t -> t.getSequenceNumber());
      WBS_COLUMNS.put("est_wt", t -> Integer.valueOf(1));
      WBS_COLUMNS.put("proj_node_flag", t -> Boolean.FALSE);
      WBS_COLUMNS.put("sum_data_flag", t -> Boolean.TRUE);
      WBS_COLUMNS.put("status_code", t -> "WS_Open");
      WBS_COLUMNS.put("wbs_short_name", t -> TaskHelper.getWbsCode(t));
      WBS_COLUMNS.put("wbs_name", t -> t.getName());
      WBS_COLUMNS.put("phase_id", t -> "");
      WBS_COLUMNS.put("parent_wbs_id", t -> t.getParentTaskUniqueID());
      WBS_COLUMNS.put("ev_user_pct", t -> Integer.valueOf(6));
      WBS_COLUMNS.put("ev_etc_user_value", t -> Double.valueOf(0.88));
      WBS_COLUMNS.put("orig_cost", t -> Currency.ZERO);
      WBS_COLUMNS.put("indep_remain_total_cost", t -> Currency.ZERO);
      WBS_COLUMNS.put("ann_dscnt_rate_pct", t -> "");
      WBS_COLUMNS.put("dscnt_period_type", t -> "");
      WBS_COLUMNS.put("indep_remain_work_qty", t -> Integer.valueOf(0));
      WBS_COLUMNS.put("anticip_start_date", t -> "");
      WBS_COLUMNS.put("anticip_end_date", t -> "");
      WBS_COLUMNS.put("ev_compute_type", t -> "EC_Cmp_pct");
      WBS_COLUMNS.put("ev_etc_compute_type", t -> "EE_PF_cpi");
      WBS_COLUMNS.put("guid", t -> t.getGUID());
      WBS_COLUMNS.put("tmpl_guid", t -> "");
      WBS_COLUMNS.put("plan_open_state", t -> "");
   }

   private static final Map<String, ExportFunction<Task>> ACTIVITY_COLUMNS = new LinkedHashMap<>();
   static
   {
      ACTIVITY_COLUMNS.put("task_id", t -> t.getUniqueID());
      ACTIVITY_COLUMNS.put("proj_id", t -> t.getParentFile().getProjectProperties().getUniqueID());
      ACTIVITY_COLUMNS.put("wbs_id", t -> t.getParentTaskUniqueID());
      ACTIVITY_COLUMNS.put("clndr_id", t -> t.getCalendarUniqueID());
      ACTIVITY_COLUMNS.put("phys_complete_pct", t -> t.getPhysicalPercentComplete());
      ACTIVITY_COLUMNS.put("rev_fdbk_flag", t -> Boolean.FALSE);
      ACTIVITY_COLUMNS.put("est_wt", t -> Integer.valueOf(1));
      ACTIVITY_COLUMNS.put("lock_plan_flag", t -> Boolean.FALSE);
      ACTIVITY_COLUMNS.put("auto_compute_act_flag", t -> Boolean.TRUE);
      ACTIVITY_COLUMNS.put("complete_pct_type", t -> t.getPercentCompleteType());
      ACTIVITY_COLUMNS.put("task_type", t -> t.getActivityType());
      ACTIVITY_COLUMNS.put("duration_type", t -> t.getType());
      ACTIVITY_COLUMNS.put("status_code", t -> ActivityStatusHelper.getActivityStatus(t));
      ACTIVITY_COLUMNS.put("task_code", t -> t.getActivityID());
      ACTIVITY_COLUMNS.put("task_name", t -> t.getName());
      ACTIVITY_COLUMNS.put("rsrc_id", t -> t.getPrimaryResourceID());
      ACTIVITY_COLUMNS.put("total_float_hr_cnt", t -> t.getActivityStatus() == ActivityStatus.COMPLETED ? null : t.getTotalSlack());
      ACTIVITY_COLUMNS.put("free_float_hr_cnt", t -> t.getActivityStatus() == ActivityStatus.COMPLETED ? null : t.getFreeSlack());
      ACTIVITY_COLUMNS.put("remain_drtn_hr_cnt", t -> t.getRemainingDuration());
      ACTIVITY_COLUMNS.put("act_work_qty", t -> t.getActualWork());
      ACTIVITY_COLUMNS.put("remain_work_qty", t -> t.getRemainingWork());
      ACTIVITY_COLUMNS.put("target_work_qty", t -> t.getPlannedWork());
      ACTIVITY_COLUMNS.put("target_drtn_hr_cnt", t -> t.getPlannedDuration());
      ACTIVITY_COLUMNS.put("target_equip_qty", t -> Integer.valueOf(0));
      ACTIVITY_COLUMNS.put("act_equip_qty", t -> Integer.valueOf(0));
      ACTIVITY_COLUMNS.put("remain_equip_qty", t -> Integer.valueOf(0));
      ACTIVITY_COLUMNS.put("cstr_date", t -> t.getConstraintDate());
      ACTIVITY_COLUMNS.put("act_start_date", t -> t.getActualStart());
      ACTIVITY_COLUMNS.put("act_end_date", t -> t.getActualFinish());
      ACTIVITY_COLUMNS.put("late_start_date", t -> t.getLateStart());
      ACTIVITY_COLUMNS.put("late_end_date", t -> t.getLateFinish());
      ACTIVITY_COLUMNS.put("expect_end_date", t -> null);
      ACTIVITY_COLUMNS.put("early_start_date", t -> t.getEarlyStart());
      ACTIVITY_COLUMNS.put("early_end_date", t -> t.getEarlyFinish());
      ACTIVITY_COLUMNS.put("restart_date", t -> t.getRemainingEarlyStart());
      ACTIVITY_COLUMNS.put("reend_date", t -> t.getRemainingEarlyFinish());
      ACTIVITY_COLUMNS.put("target_start_date", t -> t.getPlannedStart());
      ACTIVITY_COLUMNS.put("target_end_date", t -> t.getPlannedFinish());
      ACTIVITY_COLUMNS.put("rem_late_start_date", t -> t.getRemainingLateStart());
      ACTIVITY_COLUMNS.put("rem_late_end_date", t -> t.getRemainingLateFinish());
      ACTIVITY_COLUMNS.put("cstr_type", t -> t.getConstraintType());
      ACTIVITY_COLUMNS.put("priority_type", t -> t.getPriority());
      ACTIVITY_COLUMNS.put("suspend_date", t -> t.getSuspendDate());
      ACTIVITY_COLUMNS.put("resume_date", t -> t.getResume());
      ACTIVITY_COLUMNS.put("float_path", t -> null);
      ACTIVITY_COLUMNS.put("float_path_order", t -> null);
      ACTIVITY_COLUMNS.put("guid", t -> t.getGUID());
      ACTIVITY_COLUMNS.put("tmpl_guid", t -> null);
      ACTIVITY_COLUMNS.put("cstr_date2", t -> t.getSecondaryConstraintDate());
      ACTIVITY_COLUMNS.put("cstr_type2", t -> t.getSecondaryConstraintType());
      ACTIVITY_COLUMNS.put("driving_path_flag", t -> null);
      ACTIVITY_COLUMNS.put("act_this_per_work_qty", t -> null);
      ACTIVITY_COLUMNS.put("act_this_per_equip_qty", t -> null);
      ACTIVITY_COLUMNS.put("external_early_start_date", t -> null);
      ACTIVITY_COLUMNS.put("external_late_end_date", t -> null);
      ACTIVITY_COLUMNS.put("create_date", t -> t.getCreateDate());
      ACTIVITY_COLUMNS.put("update_date", t -> null);
      ACTIVITY_COLUMNS.put("create_user", t -> null);
      ACTIVITY_COLUMNS.put("update_user", t -> null);
      ACTIVITY_COLUMNS.put("location_id", t -> t.getLocationUniqueID());
   }

   private static final Map<String, ExportFunction<Relation>> PREDECESSOR_COLUMNS = new LinkedHashMap<>();
   static
   {
      PREDECESSOR_COLUMNS.put("task_pred_id", r -> r.getUniqueID());
      PREDECESSOR_COLUMNS.put("task_id", r -> r.getSourceTask().getUniqueID());
      PREDECESSOR_COLUMNS.put("pred_task_id", r -> r.getTargetTask().getUniqueID());
      PREDECESSOR_COLUMNS.put("proj_id", r -> r.getSourceTask().getParentFile().getProjectProperties().getUniqueID());
      PREDECESSOR_COLUMNS.put("pred_proj_id", r -> r.getTargetTask().getParentFile().getProjectProperties().getUniqueID());
      PREDECESSOR_COLUMNS.put("pred_type", r -> r.getType());
      PREDECESSOR_COLUMNS.put("lag_hr_cnt", r -> r.getLag());
      PREDECESSOR_COLUMNS.put("comments", r -> null);
      PREDECESSOR_COLUMNS.put("float_path", r -> null);
      PREDECESSOR_COLUMNS.put("aref", r -> null);
      PREDECESSOR_COLUMNS.put("arls", r -> null);
   }

   private static final Map<String, ExportFunction<ResourceAssignment>> RESOURCE_ASSIGNMENT_COLUMNS = new LinkedHashMap<>();
   static
   {
      RESOURCE_ASSIGNMENT_COLUMNS.put("taskrsrc_id", r -> r.getUniqueID());
      RESOURCE_ASSIGNMENT_COLUMNS.put("task_id", r -> r.getTaskUniqueID());
      RESOURCE_ASSIGNMENT_COLUMNS.put("proj_id", r -> r.getParentFile().getProjectProperties().getUniqueID());
      RESOURCE_ASSIGNMENT_COLUMNS.put("cost_qty_link_flag", r -> Boolean.valueOf(r.getCalculateCostsFromUnits()));
      RESOURCE_ASSIGNMENT_COLUMNS.put("role_id", r -> r.getRoleUniqueID());
      RESOURCE_ASSIGNMENT_COLUMNS.put("acct_id", r -> r.getCostAccountUniqueID());
      RESOURCE_ASSIGNMENT_COLUMNS.put("rsrc_id", r -> r.getResourceUniqueID());
      RESOURCE_ASSIGNMENT_COLUMNS.put("pobs_id", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("skill_level", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("remain_qty", r -> r.getRemainingWork());
      RESOURCE_ASSIGNMENT_COLUMNS.put("target_qty", r -> r.getPlannedWork());
      RESOURCE_ASSIGNMENT_COLUMNS.put("remain_qty_per_hr", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("target_lag_drtn_hr_cnt", r -> r.getDelay());
      RESOURCE_ASSIGNMENT_COLUMNS.put("target_qty_per_hr", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_ot_qty", r -> r.getActualOvertimeWork());
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_reg_qty", r -> PrimaveraXERFileWriter.getActualRegularWork(r));
      RESOURCE_ASSIGNMENT_COLUMNS.put("relag_drtn_hr_cnt", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("ot_factor", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("cost_per_qty", r -> r.getOverrideRate());
      RESOURCE_ASSIGNMENT_COLUMNS.put("target_cost", r -> Currency.getInstance(r.getPlannedCost()));
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_reg_cost", r -> Currency.getInstance(PrimaveraXERFileWriter.getActualRegularCost(r)));
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_ot_cost", r -> Currency.getInstance(r.getActualOvertimeCost()));
      RESOURCE_ASSIGNMENT_COLUMNS.put("remain_cost", r -> Currency.getInstance(r.getRemainingCost()));
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_start_date", r -> r.getActualStart());
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_end_date", r -> r.getActualFinish());
      RESOURCE_ASSIGNMENT_COLUMNS.put("restart_date", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("reend_date", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("target_start_date", r -> r.getPlannedStart());
      RESOURCE_ASSIGNMENT_COLUMNS.put("target_end_date", r -> r.getPlannedFinish());
      RESOURCE_ASSIGNMENT_COLUMNS.put("rem_late_start_date", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("rem_late_end_date", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("rollup_dates_flag", r -> Boolean.TRUE);
      RESOURCE_ASSIGNMENT_COLUMNS.put("target_crv", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("remain_crv", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("actual_crv", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("ts_pend_act_end_flag", r -> Boolean.FALSE);
      RESOURCE_ASSIGNMENT_COLUMNS.put("guid", r -> r.getGUID());
      RESOURCE_ASSIGNMENT_COLUMNS.put("rate_type", r -> RateTypeHelper.getXerFromInstance(r.getRateIndex()));
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_this_per_cost", r -> Currency.ZERO);
      RESOURCE_ASSIGNMENT_COLUMNS.put("act_this_per_qty", r -> Integer.valueOf(0));
      RESOURCE_ASSIGNMENT_COLUMNS.put("curv_id", r -> CurveHelper.getCurveID(r.getWorkContour()));
      RESOURCE_ASSIGNMENT_COLUMNS.put("rsrc_type", r -> r.getResource() == null ? ResourceType.WORK : r.getResource().getType());
      RESOURCE_ASSIGNMENT_COLUMNS.put("cost_per_qty_source_type", r -> r.getRateSource());
      RESOURCE_ASSIGNMENT_COLUMNS.put("create_user", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("create_date", r -> r.getCreateDate());
      RESOURCE_ASSIGNMENT_COLUMNS.put("has_rsrchours", r -> null);
      RESOURCE_ASSIGNMENT_COLUMNS.put("taskrsrc_sum_id", r -> null);
   }

   private static final Map<String, ExportFunction<CostAccount>> COST_ACCOUNT_COLUMNS = new LinkedHashMap<>();
   static
   {
      COST_ACCOUNT_COLUMNS.put("acct_id", c -> c.getUniqueID());
      COST_ACCOUNT_COLUMNS.put("parent_acct_id", c -> c.getParentUniqueID());
      COST_ACCOUNT_COLUMNS.put("acct_seq_num", c -> c.getSequenceNumber());
      COST_ACCOUNT_COLUMNS.put("acct_name", c -> c.getID());
      COST_ACCOUNT_COLUMNS.put("acct_short_name", c -> c.getName());
      COST_ACCOUNT_COLUMNS.put("acct_descr", c -> c.getDescription());
   }

   private static final Map<String, ExportFunction<ExpenseCategory>> EXPENSE_CATEGORY_COLUMNS = new LinkedHashMap<>();
   static
   {
      EXPENSE_CATEGORY_COLUMNS.put("cost_type_id", e -> e.getUniqueID());
      EXPENSE_CATEGORY_COLUMNS.put("seq_num", e -> e.getSequenceNumber());
      EXPENSE_CATEGORY_COLUMNS.put("cost_type", e -> e.getName());
   }

   private static final Map<String, ExportFunction<Location>> LOCATION_COLUMNS = new LinkedHashMap<>();
   static
   {
      LOCATION_COLUMNS.put("location_id", l -> l.getUniqueID());
      LOCATION_COLUMNS.put("location_name", l -> l.getName());
      LOCATION_COLUMNS.put("location_type", l -> locationIsCity(l) ? "City" : "LT_Point");
      LOCATION_COLUMNS.put("address_line1", l -> l.getAddressLine1());
      LOCATION_COLUMNS.put("address_line2", l -> l.getAddressLine2());
      LOCATION_COLUMNS.put("address_line3", l -> l.getAddressLine3());
      LOCATION_COLUMNS.put("city_name", l -> l.getCity());
      LOCATION_COLUMNS.put("municipality_name", l -> l.getMunicipality());
      LOCATION_COLUMNS.put("state_name", l -> l.getState());
      LOCATION_COLUMNS.put("state_code", l -> l.getStateCode());
      LOCATION_COLUMNS.put("country_name", l -> l.getCountry());
      LOCATION_COLUMNS.put("country_code", l -> l.getCountryCode());
      LOCATION_COLUMNS.put("postal_code", l -> l.getPostalCode());
      LOCATION_COLUMNS.put("longitude", l -> l.getLongitude());
      LOCATION_COLUMNS.put("latitude", l -> l.getLatitude());
   }

   private static final Map<String, ExportFunction<ExpenseItem>> EXPENSE_ITEM_COLUMNS = new LinkedHashMap<>();
   static
   {
      EXPENSE_ITEM_COLUMNS.put("cost_item_id", i -> i.getUniqueID());
      EXPENSE_ITEM_COLUMNS.put("acct_id", i -> i.getAccountUniqueID());
      EXPENSE_ITEM_COLUMNS.put("pobs_id", i -> null);
      EXPENSE_ITEM_COLUMNS.put("cost_type_id", i -> i.getCategoryUniqueID());
      EXPENSE_ITEM_COLUMNS.put("proj_id", i -> i.getTask().getParentFile().getProjectProperties().getUniqueID());
      EXPENSE_ITEM_COLUMNS.put("task_id", i -> i.getTask().getUniqueID());
      EXPENSE_ITEM_COLUMNS.put("cost_name", i -> i.getName());
      EXPENSE_ITEM_COLUMNS.put("po_number", i -> i.getDocumentNumber());
      EXPENSE_ITEM_COLUMNS.put("vendor_name", i -> i.getVendor());
      EXPENSE_ITEM_COLUMNS.put("act_cost", i -> Currency.getInstance(i.getActualCost()));
      EXPENSE_ITEM_COLUMNS.put("cost_per_qty", i -> Currency.getInstance(i.getPricePerUnit()));
      EXPENSE_ITEM_COLUMNS.put("remain_cost", i -> Currency.getInstance(i.getRemainingCost()));
      EXPENSE_ITEM_COLUMNS.put("target_cost", i -> Currency.getInstance(i.getPlannedCost()));
      EXPENSE_ITEM_COLUMNS.put("cost_load_type", i -> i.getAccrueType());
      EXPENSE_ITEM_COLUMNS.put("auto_compute_act_flag", i -> Boolean.valueOf(i.getAutoComputeActuals()));
      EXPENSE_ITEM_COLUMNS.put("target_qty", i -> i.getPlannedUnits());
      EXPENSE_ITEM_COLUMNS.put("qty_name", i -> i.getUnitOfMeasure());
      EXPENSE_ITEM_COLUMNS.put("cost_descr", i -> i.getDescription());
      EXPENSE_ITEM_COLUMNS.put("contract_manager_import", i -> null);
   }

   private static final Map<String, ExportFunction<WorkContour>> RESOURCE_CURVE_COLUMNS = new LinkedHashMap<>();
   static
   {
      RESOURCE_CURVE_COLUMNS.put("curv_id", r -> r.getUniqueID());
      RESOURCE_CURVE_COLUMNS.put("curv_name", r -> r.getName());
      RESOURCE_CURVE_COLUMNS.put("default_flag", r -> Boolean.valueOf(r.isContourDefault()));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_0", r -> Double.valueOf(r.getCurveValues()[0]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_1", r -> Double.valueOf(r.getCurveValues()[1]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_2", r -> Double.valueOf(r.getCurveValues()[2]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_3", r -> Double.valueOf(r.getCurveValues()[3]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_4", r -> Double.valueOf(r.getCurveValues()[4]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_5", r -> Double.valueOf(r.getCurveValues()[5]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_6", r -> Double.valueOf(r.getCurveValues()[6]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_7", r -> Double.valueOf(r.getCurveValues()[7]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_8", r -> Double.valueOf(r.getCurveValues()[8]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_9", r -> Double.valueOf(r.getCurveValues()[9]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_10", r -> Double.valueOf(r.getCurveValues()[10]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_11", r -> Double.valueOf(r.getCurveValues()[11]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_12", r -> Double.valueOf(r.getCurveValues()[12]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_13", r -> Double.valueOf(r.getCurveValues()[13]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_14", r -> Double.valueOf(r.getCurveValues()[14]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_15", r -> Double.valueOf(r.getCurveValues()[15]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_16", r -> Double.valueOf(r.getCurveValues()[16]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_17", r -> Double.valueOf(r.getCurveValues()[17]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_18", r -> Double.valueOf(r.getCurveValues()[18]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_19", r -> Double.valueOf(r.getCurveValues()[19]));
      RESOURCE_CURVE_COLUMNS.put("pct_usage_20", r -> Double.valueOf(r.getCurveValues()[20]));
   }

   private static final Map<String, ExportFunction<Step>> ACTIVITY_STEP_COLUMNS = new LinkedHashMap<>();
   static
   {
      ACTIVITY_STEP_COLUMNS.put("proc_id", s -> s.getUniqueID());
      ACTIVITY_STEP_COLUMNS.put("task_id", s -> s.getTask().getUniqueID());
      ACTIVITY_STEP_COLUMNS.put("proj_id", s -> s.getTask().getParentFile().getProjectProperties().getUniqueID());
      ACTIVITY_STEP_COLUMNS.put("seq_num", s -> s.getSequenceNumber());
      ACTIVITY_STEP_COLUMNS.put("proc_name", s -> s.getName());
      ACTIVITY_STEP_COLUMNS.put("complete_flag", s -> Boolean.valueOf(s.getComplete()));
      ACTIVITY_STEP_COLUMNS.put("proc_wt", s -> s.getWeight());
      ACTIVITY_STEP_COLUMNS.put("complete_pct", s -> s.getPercentComplete());
      ACTIVITY_STEP_COLUMNS.put("proc_descr", s -> s.getDescriptionObject());
   }

   private static final Map<String, ExportFunction<ActivityCode>> ACTIVITY_CODE_COLUMNS = new LinkedHashMap<>();
   static
   {
      ACTIVITY_CODE_COLUMNS.put("actv_code_type_id", a -> a.getUniqueID());
      ACTIVITY_CODE_COLUMNS.put("actv_short_len", a -> a.getMaxLength());
      ACTIVITY_CODE_COLUMNS.put("seq_num", a -> a.getSequenceNumber());
      ACTIVITY_CODE_COLUMNS.put("actv_code_type", a -> a.getName());
      ACTIVITY_CODE_COLUMNS.put("proj_id", a -> a.getScopeProjectUniqueID());
      ACTIVITY_CODE_COLUMNS.put("wbs_id", a -> a.getScopeEpsUniqueID());
      ACTIVITY_CODE_COLUMNS.put("actv_code_type_scope", a -> a.getScope());
   }

   private static final Map<String, ExportFunction<ActivityCodeValue>> ACTIVITY_CODE_VALUE_COLUMNS = new LinkedHashMap<>();
   static
   {
      ACTIVITY_CODE_VALUE_COLUMNS.put("actv_code_id", a -> a.getUniqueID());
      ACTIVITY_CODE_VALUE_COLUMNS.put("parent_actv_code_id", a -> a.getParentUniqueID());
      ACTIVITY_CODE_VALUE_COLUMNS.put("actv_code_type_id", a -> a.getType().getUniqueID());
      ACTIVITY_CODE_VALUE_COLUMNS.put("actv_code_name", a -> a.getDescription());
      ACTIVITY_CODE_VALUE_COLUMNS.put("short_name", a -> a.getName());
      ACTIVITY_CODE_VALUE_COLUMNS.put("seq_num", a -> a.getSequenceNumber());
      ACTIVITY_CODE_VALUE_COLUMNS.put("color", a -> a.getColor());
      ACTIVITY_CODE_VALUE_COLUMNS.put("total_assignments", a -> null);
   }

   private static final Map<String, ExportFunction<Pair<Task, ActivityCodeValue>>> ACTIVITY_CODE_ASSIGNMENT_COLUMNS = new LinkedHashMap<>();
   static
   {
      ACTIVITY_CODE_ASSIGNMENT_COLUMNS.put("task_id", p -> p.getFirst().getUniqueID());
      ACTIVITY_CODE_ASSIGNMENT_COLUMNS.put("actv_code_type_id", p -> p.getSecond().getType().getUniqueID());
      ACTIVITY_CODE_ASSIGNMENT_COLUMNS.put("actv_code_id", p -> p.getSecond().getUniqueID());
      ACTIVITY_CODE_ASSIGNMENT_COLUMNS.put("proj_id", p -> p.getFirst().getParentFile().getProjectProperties().getUniqueID());
   }

   private static final Map<String, ExportFunction<Pair<FieldType, CustomField>>> UDF_TYPE_COLUMNS = new LinkedHashMap<>();
   static
   {
      UDF_TYPE_COLUMNS.put("udf_type_id", p -> getUdfTypeID(p.getFirst()));
      UDF_TYPE_COLUMNS.put("table_name", p -> FieldTypeClassHelper.getXerFromInstance(p.getFirst()));
      UDF_TYPE_COLUMNS.put("udf_type_name", p -> getUdfTypeName(p.getFirst()));
      UDF_TYPE_COLUMNS.put("udf_type_label", p -> getUdfTypeLabel(p.getFirst(), p.getSecond()));
      UDF_TYPE_COLUMNS.put("logical_data_type", p -> p.getFirst().getDataType());
      UDF_TYPE_COLUMNS.put("super_flag", p -> Boolean.FALSE);
      UDF_TYPE_COLUMNS.put("indicator_expression", p -> null);
      UDF_TYPE_COLUMNS.put("summary_indicator_expression", p -> null);
   }

   private static final Map<String, ExportFunction<Map<String, Object>>> UDF_ASSIGNMENT_COLUMNS = new LinkedHashMap<>();
   static
   {
      UDF_ASSIGNMENT_COLUMNS.put("udf_type_id", u -> u.get("udf_type_id"));
      UDF_ASSIGNMENT_COLUMNS.put("fk_id", u -> u.get("fk_id"));
      UDF_ASSIGNMENT_COLUMNS.put("proj_id", u -> u.get("proj_id"));
      UDF_ASSIGNMENT_COLUMNS.put("udf_date", u -> u.get("udf_date"));
      UDF_ASSIGNMENT_COLUMNS.put("udf_number", u -> u.get("udf_number"));
      UDF_ASSIGNMENT_COLUMNS.put("udf_text", u -> u.get("udf_text"));
      UDF_ASSIGNMENT_COLUMNS.put("udf_code_id", u -> u.get("udf_code_id"));
   }

   private static final Map<String, ExportFunction<NotesTopic>> NOTE_TYPE_COLUMNS = new LinkedHashMap<>();
   static
   {
      NOTE_TYPE_COLUMNS.put("memo_type_id", n -> n.getUniqueID());
      NOTE_TYPE_COLUMNS.put("seq_num", n -> n.getSequenceNumber());
      NOTE_TYPE_COLUMNS.put("eps_flag", n -> Boolean.valueOf(n.getAvailableForEPS()));
      NOTE_TYPE_COLUMNS.put("proj_flag", n -> Boolean.valueOf(n.getAvailableForProject()));
      NOTE_TYPE_COLUMNS.put("wbs_flag", n -> Boolean.valueOf(n.getAvailableForWBS()));
      NOTE_TYPE_COLUMNS.put("task_flag", n -> Boolean.valueOf(n.getAvailableForActivity()));
      NOTE_TYPE_COLUMNS.put("memo_type", n -> n.getName());
   }

   private static final Map<String, ExportFunction<Map<String, Object>>> WBS_NOTE_COLUMNS = new LinkedHashMap<>();
   static
   {
      WBS_NOTE_COLUMNS.put("wbs_memo_id", n -> n.get("entity_memo_id"));
      WBS_NOTE_COLUMNS.put("proj_id", n -> n.get("proj_id"));
      WBS_NOTE_COLUMNS.put("memo_type_id", n -> n.get("memo_type_id"));
      WBS_NOTE_COLUMNS.put("wbs_id", n -> n.get("entity_id"));
      WBS_NOTE_COLUMNS.put("wbs_memo", n -> n.get("entity_memo"));
   }

   private static final Map<String, ExportFunction<Map<String, Object>>> ACTIVITY_NOTE_COLUMNS = new LinkedHashMap<>();
   static
   {
      ACTIVITY_NOTE_COLUMNS.put("memo_id", n -> n.get("entity_memo_id"));
      ACTIVITY_NOTE_COLUMNS.put("task_id", n -> n.get("entity_id"));
      ACTIVITY_NOTE_COLUMNS.put("memo_type_id", n -> n.get("memo_type_id"));
      ACTIVITY_NOTE_COLUMNS.put("proj_id", n -> n.get("proj_id"));
      ACTIVITY_NOTE_COLUMNS.put("task_memo", n -> n.get("entity_memo"));
   }
}