//
// This file was generated by the Eclipse Implementation of JAXB, v2.3.3
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2023.06.16 at 11:06:04 AM BST
//

package net.sf.mpxj.ganttproject.schema;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;

/**
 * &lt;p&gt;Java class for custom-task-property complex type.
 *
 * &lt;p&gt;The following schema fragment specifies the expected content contained within this class.
 *
 * &lt;pre&gt;
 * &amp;lt;complexType name="custom-task-property"&amp;gt;
 *   &amp;lt;simpleContent&amp;gt;
 *     &amp;lt;extension base="&amp;lt;http://www.w3.org/2001/XMLSchema&amp;gt;string"&amp;gt;
 *       &amp;lt;attribute name="taskproperty-id" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="value" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *     &amp;lt;/extension&amp;gt;
 *   &amp;lt;/simpleContent&amp;gt;
 * &amp;lt;/complexType&amp;gt;
 * &lt;/pre&gt;
 *
 *
 */
@SuppressWarnings("all") @XmlAccessorType(XmlAccessType.FIELD) @XmlType(name = "custom-task-property", propOrder =
{
   "value"
}) public class CustomTaskProperty
{

   @XmlValue protected String value;
   @XmlAttribute(name = "taskproperty-id") protected String taskpropertyId;
   @XmlAttribute(name = "value") protected String valueAttribute;

   /**
    * Gets the value of the value property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getValue()
   {
      return value;
   }

   /**
    * Sets the value of the value property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setValue(String value)
   {
      this.value = value;
   }

   /**
    * Gets the value of the taskpropertyId property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getTaskpropertyId()
   {
      return taskpropertyId;
   }

   /**
    * Sets the value of the taskpropertyId property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setTaskpropertyId(String value)
   {
      this.taskpropertyId = value;
   }

   /**
    * Gets the value of the valueAttribute property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getValueAttribute()
   {
      return valueAttribute;
   }

   /**
    * Sets the value of the valueAttribute property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setValueAttribute(String value)
   {
      this.valueAttribute = value;
   }

}
