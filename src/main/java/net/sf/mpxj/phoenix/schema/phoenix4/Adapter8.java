//
// This file was generated by the Eclipse Implementation of JAXB, v2.3.3
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2023.06.16 at 11:06:01 AM BST
//

package net.sf.mpxj.phoenix.schema.phoenix4;

import java.time.DayOfWeek;
import javax.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter8 extends XmlAdapter<String, DayOfWeek>
{

   @Override public DayOfWeek unmarshal(String value)
   {
      return (net.sf.mpxj.phoenix.DatatypeConverter.parseDay(value));
   }

   @Override public String marshal(DayOfWeek value)
   {
      return (net.sf.mpxj.phoenix.DatatypeConverter.printDay(value));
   }

}
