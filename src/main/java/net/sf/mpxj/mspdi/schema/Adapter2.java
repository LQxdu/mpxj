//
// This file was generated by the Eclipse Implementation of JAXB, v2.3.3
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2024.01.26 at 09:42:19 AM GMT
//

package net.sf.mpxj.mspdi.schema;

import java.math.BigDecimal;
import javax.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter2 extends XmlAdapter<String, BigDecimal>
{

   @Override public BigDecimal unmarshal(String value)
   {
      return (javax.xml.bind.DatatypeConverter.parseDecimal(value));
   }

   @Override public String marshal(BigDecimal value)
   {
      if (value == null)
      {
         return null;
      }
      return (javax.xml.bind.DatatypeConverter.printDecimal(value));
   }

}
