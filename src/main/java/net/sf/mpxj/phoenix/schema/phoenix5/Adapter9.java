//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.2
// See https://eclipse-ee4j.github.io/jaxb-ri
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2024.07.22 at 12:22:04 PM BST
//

package net.sf.mpxj.phoenix.schema.phoenix5;

import java.time.LocalDateTime;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter9
         extends
            XmlAdapter<String, LocalDateTime>
{

   @Override public LocalDateTime unmarshal(String value)
   {
      return (net.sf.mpxj.phoenix.DatatypeConverter.parseFinishDateTime(value));
   }

   @Override public String marshal(LocalDateTime value)
   {
      return (net.sf.mpxj.phoenix.DatatypeConverter.printFinishDateTime(value));
   }

}
