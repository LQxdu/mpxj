/*
 * file:       JackcessResultSetRow.java
 * author:     Jon Iles
 * copyright:  (c) Packwood Software 2012
 * date:       29/04/2012
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

package net.sf.mpxj.mpd;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.healthmarketscience.jackcess.Column;
import com.healthmarketscience.jackcess.DataType;
import net.sf.mpxj.common.NumberHelper;

/**
 * Implementation of the Row interface, wrapping a Map.
 */
final class JackcessResultSetRow extends MapRow
{
   /**
    * Constructor.
    *
    * @param row row from which data is drawn
    * @param columns column meta data
    */
   public JackcessResultSetRow(com.healthmarketscience.jackcess.Row row, List<? extends Column> columns)
   {
      super(new HashMap<>());

      for (Column column : columns)
      {
         String name = column.getName().toUpperCase();
         DataType type = column.getType();
         Object value = null;

         switch (type)
         {
            case BOOLEAN:
            {
               value = row.getBoolean(name);
               break;
            }

            case MEMO:
            case TEXT:
            case GUID:
            {
               value = row.getString(name);
               break;
            }

            case EXT_DATE_TIME:
            case SHORT_DATE_TIME:
            {
               LocalDateTime l = row.getLocalDateTime(name);
               if (l != null)
               {
                  value = Date.from(l.atZone(ZoneId.systemDefault()).toInstant());
               }
               break;
            }

            case DOUBLE:
            case FLOAT:
            case MONEY:
            case NUMERIC:
            {
               value = row.getDouble(name);
               break;
            }

            case BIG_INT:
            case BYTE:
            case LONG:
            {
               value = row.getInt(name);
               break;
            }

            case INT:
            {
               value = NumberHelper.getInteger(row.getShort(name));
               break;
            }

            case OLE:
            case BINARY:
            {
               value = row.getBytes(name);
               break;
            }

            default:
            {
               throw new IllegalArgumentException("Unsupported SQL type: " + type + " for column " + name);
            }
         }

         m_map.put(name, value);
      }
   }
}