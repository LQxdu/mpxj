//
// This file was generated by the Eclipse Implementation of JAXB, v2.3.3
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2023.06.16 at 11:05:58 AM BST
//

package net.sf.mpxj.primavera.schema;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;

/**
 * &lt;p&gt;Java class for WbsReviewersType complex type.
 *
 * &lt;p&gt;The following schema fragment specifies the expected content contained within this class.
 *
 * &lt;pre&gt;
 * &amp;lt;complexType name="WbsReviewersType"&amp;gt;
 *   &amp;lt;complexContent&amp;gt;
 *     &amp;lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&amp;gt;
 *       &amp;lt;sequence&amp;gt;
 *         &amp;lt;element name="ObjectId" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="StatusReviewerId" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&amp;gt;
 *         &amp;lt;element name="WbsId" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&amp;gt;
 *       &amp;lt;/sequence&amp;gt;
 *     &amp;lt;/restriction&amp;gt;
 *   &amp;lt;/complexContent&amp;gt;
 * &amp;lt;/complexType&amp;gt;
 * &lt;/pre&gt;
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD) @XmlType(name = "WbsReviewersType", propOrder =
{
   "objectId",
   "statusReviewerId",
   "wbsId"
}) public class WbsReviewersType
{

   @XmlElement(name = "ObjectId") protected Integer objectId;
   @XmlElement(name = "StatusReviewerId") protected Integer statusReviewerId;
   @XmlElement(name = "WbsId") protected Integer wbsId;

   /**
    * Gets the value of the objectId property.
    *
    * @return
    *     possible object is
    *     {@link Integer }
    *
    */
   public Integer getObjectId()
   {
      return objectId;
   }

   /**
    * Sets the value of the objectId property.
    *
    * @param value
    *     allowed object is
    *     {@link Integer }
    *
    */
   public void setObjectId(Integer value)
   {
      this.objectId = value;
   }

   /**
    * Gets the value of the statusReviewerId property.
    *
    * @return
    *     possible object is
    *     {@link Integer }
    *
    */
   public Integer getStatusReviewerId()
   {
      return statusReviewerId;
   }

   /**
    * Sets the value of the statusReviewerId property.
    *
    * @param value
    *     allowed object is
    *     {@link Integer }
    *
    */
   public void setStatusReviewerId(Integer value)
   {
      this.statusReviewerId = value;
   }

   /**
    * Gets the value of the wbsId property.
    *
    * @return
    *     possible object is
    *     {@link Integer }
    *
    */
   public Integer getWbsId()
   {
      return wbsId;
   }

   /**
    * Sets the value of the wbsId property.
    *
    * @param value
    *     allowed object is
    *     {@link Integer }
    *
    */
   public void setWbsId(Integer value)
   {
      this.wbsId = value;
   }

}
