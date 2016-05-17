package occ.cs272.ic15;

import java.io.*;               // PrintWriter

import javax.servlet.*;         // Generic Servlet
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;    // HttpServlet

import java.util.*;             // Enumeration, Vector

/**
 *  CS 272 Example - Examining Servlet Sessions
 *
 *  @author Stephen Gilbert
 *  @version Spring 2016
 *
 */
@WebServlet("/sessions")
public class Sessions extends HttpServlet
{
    // The GET method
    public void doGet( HttpServletRequest  req,
                       HttpServletResponse res)
                       throws ServletException, IOException
    {
        // 1. Get the existing session if it exists
        HttpSession session = req.getSession(false);

        // 2. If no session, then create one
        if (session == null)
            session = req.getSession(); // true by default

        // 3. Start your output
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<html><head><title>Sessions</title></head>");
        out.println("<body><pre>");

        // 4. Print the session stats
        printSessionInfo(session, out);

        // Allow the user some control over the session
        out.println("<form method='POST'>");

        // 5. Change the length of the session
        out.println("<b>Change session timeout</b>");
        out.print("<input type='radio' name='timeout' value='5'>");
        out.print("5 minutes  ");
        out.print("<input type='radio' name='timeout' value='1440'>");
        out.print("1 day  ");
        out.print("<input type='radio' name='timeout' value='10080'>");
        out.println("1 week\n");

        // 6. Add a regular field [replace each time]
        out.println("<b>Enter your name</b>");
        out.println("<input type='text' name='name'>");

        // 7. Allow user to remove the name field
        out.print("<input type='checkbox' name='noname'>");
        out.println(" Check here to remove your name from the session\n");

        // 8. Add an array of String to the session
        out.println("<b>Choose your favorite beverages</b>");
        out.println("<select name='beverages' multiple size='4'>");
        out.println("<option value='Coffee' checked>Coffee");
        out.println("<option value='Pepsi'>Pepsi");
        out.println("<option value='Diet Pepsi'>Diet Pepsi");
        out.println("<option value='Mountain Dew'>Mountain Dew");
        out.println("<option value='Milk'>Milk");
        out.println("<option value='Perrier'>Perrier");
        out.println("</select><br>");

        // 9. Add a cumulative string to the session
        out.println("<b>Add a cumulative nickname</b>");
        out.println("<input type='text' name='nickname'><p>");

        // 10. Add a Modify Session button and a New Session button
        out.println("<p><input type='submit' value='Modify Session'>");
        out.print("<input type='submit' value='New Session' ");
        out.println("name='newSession'>");
        out.println("</form>");
        out.println("</pre></body></html>");
    }

    // The POST method
    public void doPost( HttpServletRequest  req,
                        HttpServletResponse res)
                        throws ServletException, IOException
    {
        // 1. Get the Session
        HttpSession session = req.getSession();

        // 2. Process a session command [change timeout]
        String timeout = req.getParameter("timeout");
        if (timeout != null)
        {
            int newTimeout = Integer.parseInt(timeout) * 60;
            session.setMaxInactiveInterval(newTimeout);
        }

        // 3. Process single field -- with replacement
        String name = req.getParameter("name");
        if (name != null && name.length() > 0)
            session.setAttribute("name", name);

        // 4. Process an array of String
        String[] beverages = req.getParameterValues("beverages");
        if (beverages != null)
            session.setAttribute("beverages", beverages);

        // 5. Process an additive field [use a vector]
        String nickname = req.getParameter("nickname");
        if (nickname != null && nickname.length() > 0)
        {
            @SuppressWarnings("unchecked")
            Vector<String> v =
                (Vector<String>) req.getSession().getAttribute("nickname");
            if (v == null) // no nicknames yet
            {
                v = new Vector<String>();
                req.getSession().setAttribute("nickname", v);
            }
            v.addElement(nickname);
        }

        // 6. Remove the name attribute from the session if requested
        if (req.getParameter("noname") != null)
            session.removeAttribute("name");

        // 7. Process the "New Session" button
        if (req.getParameter("newSession") != null)
            session.invalidate();

        // 7. Do the GET processing
        doGet(req, res);
    }

    public void printSessionInfo(HttpSession session, PrintWriter out)
    {
        // Print the info about the current session
        // 1. Session ID
        out.println("Session ID : " + session.getId());

        // 2. When the session was created
        out.print("Created at : ");
        out.println(new Date(session.getCreationTime()));

        // 3. When the session was last accessed
        out.print("Last access: ");
        out.println(new Date(session.getLastAccessedTime()));

        // 4. When the session expires
        out.print("Expires at : ");
        out.println(new Date(session.getLastAccessedTime() +
                (session.getMaxInactiveInterval() * 1000)));

        // Print the values in the current session
        out.println("\n<b>Session varaibles</b>");
        out.println("------------------------------------");
        Enumeration<String> e = session.getAttributeNames();
        while (e.hasMoreElements())
        {
            String name = e.nextElement();
            Object value = session.getAttribute(name);

            // If session variable is a String array
            if ( value instanceof String[] )
            {
                String[] ar = (String[]) value;
                for (int i = 0; i < ar.length; i++)
                    out.println("  " + name + "[" + i + "] == " + ar[i]);
            }

            // If session variable is a Vector
            else if ( value instanceof Vector )
            {
                Vector<?> vec = (Vector<?>) value;
                for (int i = 0; i < vec.size(); i++)
                    out.println("  " + name + ".elementAt(" + i +
                                ") == " + vec.elementAt(i));
            }
            // If session variable is a simple Object variable
            else
                out.println( name + " = " + value );
        }
    }
}

