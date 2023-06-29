//
// This file was generated by the Eclipse Implementation of JAXB, v2.3.3
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2023.06.16 at 11:06:04 AM BST
//

package net.sf.mpxj.ganttproject.schema;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;

/**
 * &lt;p&gt;Java class for resource complex type.
 *
 * &lt;p&gt;The following schema fragment specifies the expected content contained within this class.
 *
 * &lt;pre&gt;
 * &amp;lt;complexType name="resource"&amp;gt;
 *   &amp;lt;complexContent&amp;gt;
 *     &amp;lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&amp;gt;
 *       &amp;lt;sequence&amp;gt;
 *         &amp;lt;element name="rate" type="{}rate" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="custom-property" type="{}custom-resource-property" maxOccurs="unbounded" minOccurs="0"/&amp;gt;
 *       &amp;lt;/sequence&amp;gt;
 *       &amp;lt;attribute name="id" type="{http://www.w3.org/2001/XMLSchema}int" /&amp;gt;
 *       &amp;lt;attribute name="name" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="function" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="contacts" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *       &amp;lt;attribute name="phone" type="{http://www.w3.org/2001/XMLSchema}string" /&amp;gt;
 *     &amp;lt;/restriction&amp;gt;
 *   &amp;lt;/complexContent&amp;gt;
 * &amp;lt;/complexType&amp;gt;
 * &lt;/pre&gt;
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD) @XmlType(name = "resource", propOrder =
{
   "rate",
   "customProperty"
}) public class Resource
{

   protected Rate rate;
   @XmlElement(name = "custom-property") protected List<CustomResourceProperty> customProperty;
   @XmlAttribute(name = "id") protected Integer id;
   @XmlAttribute(name = "name") protected String name;
   @XmlAttribute(name = "function") protected String function;
   @XmlAttribute(name = "contacts") protected String contacts;
   @XmlAttribute(name = "phone") protected String phone;

   /**
    * Gets the value of the rate property.
    *
    * @return
    *     possible object is
    *     {@link Rate }
    *
    */
   public Rate getRate()
   {
      return rate;
   }

   /**
    * Sets the value of the rate property.
    *
    * @param value
    *     allowed object is
    *     {@link Rate }
    *
    */
   public void setRate(Rate value)
   {
      this.rate = value;
   }

   /**
    * Gets the value of the customProperty property.
    *
    * &lt;p&gt;
    * This accessor method returns a reference to the live list,
    * not a snapshot. Therefore any modification you make to the
    * returned list will be present inside the JAXB object.
    * This is why there is not a &lt;CODE&gt;set&lt;/CODE&gt; method for the customProperty property.
    *
    * &lt;p&gt;
    * For example, to add a new item, do as follows:
    * &lt;pre&gt;
    *    getCustomProperty().add(newItem);
    * &lt;/pre&gt;
    *
    *
    * &lt;p&gt;
    * Objects of the following type(s) are allowed in the list
    * {@link CustomResourceProperty }
    *
    *
    */
   public List<CustomResourceProperty> getCustomProperty()
   {
      if (customProperty == null)
      {
         customProperty = new ArrayList<>();
      }
      return this.customProperty;
   }

   /**
    * Gets the value of the id property.
    *
    * @return
    *     possible object is
    *     {@link Integer }
    *
    */
   public Integer getId()
   {
      return id;
   }

   /**
    * Sets the value of the id property.
    *
    * @param value
    *     allowed object is
    *     {@link Integer }
    *
    */
   public void setId(Integer value)
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
    * Gets the value of the function property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getFunction()
   {
      return function;
   }

   /**
    * Sets the value of the function property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setFunction(String value)
   {
      this.function = value;
   }

   /**
    * Gets the value of the contacts property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getContacts()
   {
      return contacts;
   }

   /**
    * Sets the value of the contacts property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setContacts(String value)
   {
      this.contacts = value;
   }

   /**
    * Gets the value of the phone property.
    *
    * @return
    *     possible object is
    *     {@link String }
    *
    */
   public String getPhone()
   {
      return phone;
   }

   /**
    * Sets the value of the phone property.
    *
    * @param value
    *     allowed object is
    *     {@link String }
    *
    */
   public void setPhone(String value)
   {
      this.phone = value;
   }

}
