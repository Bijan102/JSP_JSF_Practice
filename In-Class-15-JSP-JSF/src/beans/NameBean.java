package beans;

import java.io.*;

/**
 * Bean to represent a name. Mutable and Serializable because it will be stored
 * in the session and possibly updated with new names based on request
 * parameters.
 */

public class NameBean implements Serializable
{
    private String firstName = "Missing first name";
    private String lastName = "Missing last name";

    public String getFirstName()
    {
        return (firstName);
    }

    public void setFirstName(String firstName)
    {
        if (!isMissing(firstName))
        {
            this.firstName = firstName;
        }
    }

    public String getLastName()
    {
        return (lastName);
    }

    public void setLastName(String lastName)
    {
        if (!isMissing(lastName))
        {
            this.lastName = lastName;
        }
    }

    private boolean isMissing(String value)
    {
        return ((value == null) || (value.trim().equals("")));
    }
}
