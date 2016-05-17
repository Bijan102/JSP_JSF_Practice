/**
 *  DateBean2.java
 *  A "full-featured" bean for date input
 */
package beans;
import java.util.*;
import java.text.*;

public class DateBean2
{
    // 1. Fields ---------------------------------------------
    private Date date = new Date();
    private DateFormat fmt = DateFormat.getDateInstance();

    private DateFormat shortFmt =
        DateFormat.getDateInstance(DateFormat.SHORT);
    private DateFormat medFmt =
        DateFormat.getDateInstance(DateFormat.MEDIUM);
    private DateFormat longFmt =
        DateFormat.getDateInstance(DateFormat.LONG);
    private DateFormat fullFmt =
        DateFormat.getDateInstance(DateFormat.FULL);

    // 2. Accessors ------------------------------------------
    public String getDate()       { return fmt.format(date);      }
    public String getShortDate()  { return shortFmt.format(date); }
    public String getMediumDate() { return medFmt.format(date);   }
    public String getLongDate()   { return longFmt.format(date);  }
    public String getFullDate()   { return fullFmt.format(date);  }

    // 3. Mutators -------------------------------------------
    public void setDate(String newDate)
    {
        try { date = shortFmt.parse(newDate); }
        catch (ParseException e1) {
            try { date = medFmt.parse(newDate); }
            catch (ParseException e2) {
                try { date = longFmt.parse(newDate); }
                catch (ParseException e3) {
                    date = new Date(0);
                }
            }
        }
    }
}
