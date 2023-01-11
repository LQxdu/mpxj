//
// This file was generated by the Eclipse Implementation of JAXB, v2.3.3
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2022.12.01 at 11:46:04 AM GMT
//

package net.sf.mpxj.planner.schema;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

/**
 * &lt;p&gt;Java class for anonymous complex type.
 *
 * &lt;p&gt;The following schema fragment specifies the expected content contained within this class.
 *
 * &lt;pre&gt;
 * &amp;lt;complexType&amp;gt;
 *   &amp;lt;complexContent&amp;gt;
 *     &amp;lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&amp;gt;
 *       &amp;lt;sequence&amp;gt;
 *         &amp;lt;element ref="{}properties" minOccurs="0"/&amp;gt;
 *         &amp;lt;element ref="{}constraint" minOccurs="0"/&amp;gt;
 *         &amp;lt;element ref="{}predecessors" minOccurs="0"/&amp;gt;
 *         &amp;lt;element ref="{}task" maxOccurs="unbounded" minOccurs="0"/&amp;gt;
 *       &amp;lt;/sequence&amp;gt;
 *       &amp;lt;attribute name="id" use="required" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="name" use="required" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="note" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="effort" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="start" use="required" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="end" use="required" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="work-start" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="duration" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="work" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="percent-complete" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="priority" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="type" default="normal"&amp;gt;
 *         &amp;lt;simpleType&amp;gt;
 *           &amp;lt;restriction base="{http://www.w3.org/2001/XMLSchema}NMTOKEN"&amp;gt;
 *             &amp;lt;enumeration value="normal"/&amp;gt;
 *             &amp;lt;enumeration value="milestone"/&amp;gt;
 *           &amp;lt;/restriction&amp;gt;
 *         &amp;lt;/simpleType&amp;gt;
 *       &amp;lt;/attribute&amp;gt;
 *       &amp;lt;attribute name="scheduling" default="fixed-work"&amp;gt;
 *         &amp;lt;simpleType&amp;gt;
 *           &amp;lt;restriction base="{http://www.w3.org/2001/XMLSchema}NMTOKEN"&amp;gt;
 *             &amp;lt;enumeration value="fixed-work"/&amp;gt;
 *             &amp;lt;enumeration value="fixed-duration"/&amp;gt;
 *           &amp;lt;/restriction&amp;gt;
 *         &amp;lt;/simpleType&amp;gt;
 *       &amp;lt;/attribute&amp;gt;
 *       &amp;lt;attribute name="wbs" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *     &amp;lt;/restriction&amp;gt;
 *   &amp;lt;/complexContent&amp;gt;
 * &amp;lt;/complexType&amp;gt;
 * &lt;/pre&gt;
 *
 *
 */
@SuppressWarnings("all") @XmlAccessorType(XmlAccessType.FIELD) @XmlType(name = "", propOrder =
{
   "properties",
   "constraint",
   "predecessors",
   "task"
}) @XmlRootElement(name = "task") public class Task
{

   protected Properties properties;
   protected Constraint constraint;
   protected Predecessors predecessors;
   protected List<Task> task;
   @XmlAttribute(name = "id", required = true) @XmlJavaTypeAdapter(Adapter1.class) protected String id;
   @XmlAttribute(name = "name", required = true) @XmlJavaTypeAdapter(Adapter1.class) protected String name;
   @XmlAttribute(name = "note") @XmlJavaTypeAdapter(Adapter1.class) protected String note;
   @XmlAttribute(name = "effort") @XmlJavaTypeAdapter(Adapter1.class) protected String effort;
   @XmlAttribute(name = "start", required = true) @XmlJavaTypeAdapter(Adapter1.class) protected String start;
   @XmlAttribute(name = "end", required = true) @XmlJavaTypeAdapter(Adapter1.class) protected String end;
   @XmlAttribute(name = "work-start") @XmlJavaTypeAdapter(Adapter1.class) protected String workStart;
   @XmlAttribute(name = "duration") @XmlJavaTypeAdapter(Adapter1.class) protected String duration;
   @XmlAttribute(name = "work") @XmlJavaTypeAdapter(Adapter1.class) protected String work;
   @XmlAttribute(name = "percent-complete") @XmlJavaTypeAdapter(Adapter1.class) protected String percentComplete;
   @XmlAttribute(name = "priority") @XmlJavaTypeAdapter(Adapter1.class) protected String priority;
   @XmlAttribute(name = "type") @XmlJavaTypeAdapter(CollapsedStringAdapter.class) protected String type;
   @XmlAttribute(name = "scheduling") @XmlJavaTypeAdapter(CollapsedStringAdapter.class) protected String scheduling;
   @XmlAttribute(name = "wbs") @XmlJavaTypeAdapter(Adapter1.class) protected String wbs;

   /**
    * Gets the value of the properties property.
    *
    * @return
    *     possible object is
    *     {@link Properties }
    *
    */
   public Properties getProperties()
   {
      return properties;
   }

   /**
    * Sets the value of the properties property.
    *
    * @param value
    *     allowed object is
    *     {@link Properties }
    *
    */
   public void setProperties(Properties value)
   {
      this.properties = value;
   }

   /**
    * Gets the value of the constraint property.
    *
    * @return
    *     possible object is
    *     {@link Constraint }
    *
    */
   public Constraint getConstraint()
   {
      return constraint;
   }

   /**
    * Sets the value of the constraint property.
    *
    * @param value
    *     allowed object is
    *     {@link Constraint }
    *
    */
   public void setConstraint(Constraint value)
   {
      this.constraint = value;
   }

   /**
    * Gets the value of the predecessors property.
    *
    * @return
    *     possible object is
    *     {@link Predecessors }
    *
    */
   public Predecessors getPredecessors()
   {
      return predecessors;
   }

   /**
    * Sets the value of the predecessors property.
    *
    * @param value
    *     allowed object is
    *     {@link Predecessors }
    *
    */
   public void setPredecessors(Predecessors value)
   {
      this.predecessors = value;
   }

   /**
    * Gets the value of the task property.
    *
    * &lt;p&gt;
    * This accessor method returns a reference to the live list,
    * not a snapshot. Therefore any modification you make to the
    * returned list will be present inside the JAXB object.
    * This is why there is not a &lt;CODE&gt;set&lt;/CODE&gt; method for the task property.
    *
    * &lt;p&gt;
    * For example, to add a new item, do as follows:
    * &lt;pre&gt;
    *    getTask().add(newItem);
    * &lt;/pre&gt;
    *
    *
    * &lt;p&gt;
    * Objects of the following type(s) are allowed in the list
    * {@link Task }
    *
    *
    */
   public List<Task> getTask()
   {
      if (task == null)
      {
         task = new ArrayList<>();
      }
      return this.task;
   }

   /**
    * Gets the value of the id property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getId()
   {
      return id;
   }

   /**
    * Sets the value of the id property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setId(String value)
   {
      this.id = value;
   }

   /**
    * Gets the value of the name property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getName()
   {
      return name;
   }

   /**
    * Sets the value of the name property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setName(String value)
   {
      this.name = value;
   }

   /**
    * Gets the value of the note property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getNote()
   {
      return note;
   }

   /**
    * Sets the value of the note property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setNote(String value)
   {
      this.note = value;
   }

   /**
    * Gets the value of the effort property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getEffort()
   {
      return effort;
   }

   /**
    * Sets the value of the effort property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setEffort(String value)
   {
      this.effort = value;
   }

   /**
    * Gets the value of the start property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getStart()
   {
      return start;
   }

   /**
    * Sets the value of the start property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setStart(String value)
   {
      this.start = value;
   }

   /**
    * Gets the value of the end property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getEnd()
   {
      return end;
   }

   /**
    * Sets the value of the end property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setEnd(String value)
   {
      this.end = value;
   }

   /**
    * Gets the value of the workStart property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getWorkStart()
   {
      return workStart;
   }

   /**
    * Sets the value of the workStart property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setWorkStart(String value)
   {
      this.workStart = value;
   }

   /**
    * Gets the value of the duration property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getDuration()
   {
      return duration;
   }

   /**
    * Sets the value of the duration property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setDuration(String value)
   {
      this.duration = value;
   }

   /**
    * Gets the value of the work property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getWork()
   {
      return work;
   }

   /**
    * Sets the value of the work property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setWork(String value)
   {
      this.work = value;
   }

   /**
    * Gets the value of the percentComplete property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getPercentComplete()
   {
      return percentComplete;
   }

   /**
    * Sets the value of the percentComplete property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setPercentComplete(String value)
   {
      this.percentComplete = value;
   }

   /**
    * Gets the value of the priority property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getPriority()
   {
      return priority;
   }

   /**
    * Sets the value of the priority property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setPriority(String value)
   {
      this.priority = value;
   }

   /**
    * Gets the value of the type property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getType()
   {
      if (type == null)
      {
         return "normal";
      }
      else
      {
         return type;
      }
   }

   /**
    * Sets the value of the type property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setType(String value)
   {
      this.type = value;
   }

   /**
    * Gets the value of the scheduling property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getScheduling()
   {
      if (scheduling == null)
      {
         return "fixed-work";
      }
      else
      {
         return scheduling;
      }
   }

   /**
    * Sets the value of the scheduling property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setScheduling(String value)
   {
      this.scheduling = value;
   }

   /**
    * Gets the value of the wbs property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getWbs()
   {
      return wbs;
   }

   /**
    * Sets the value of the wbs property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setWbs(String value)
   {
      this.wbs = value;
   }

}
