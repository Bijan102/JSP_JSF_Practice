package beans;
import java.util.*;
import java.text.*;
public class BasicDateBean
{
    //Create a Date object, date for the field
    private Date date = new Date();
    private DateFormat fmt = DateFormat.getDateInstance();
    public String getDate()
    {
        return fmt.format(date);
    }
    public void setDate(String sdate)
    {
        try
        {
            this.date = fmt.parse(sdate);
        }
        catch (ParseException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
}
