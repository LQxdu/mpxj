//
// This file was generated by the Eclipse Implementation of JAXB, v2.3.3
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2023.06.16 at 11:06:04 AM BST
//

package net.sf.mpxj.ganttproject.schema;

import java.time.LocalDateTime;
import javax.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter1 extends XmlAdapter<String, LocalDateTime>
{

   @Override public LocalDateTime unmarshal(String value)
   {
      return (net.sf.mpxj.ganttproject.DatatypeConverter.parseDate(value));
   }

   @Override public String marshal(LocalDateTime value)
   {
      return (net.sf.mpxj.ganttproject.DatatypeConverter.printDate(value));
   }

}
