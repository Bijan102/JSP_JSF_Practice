<%-- Famous Quips --%>
<%@ page import="java.io.*, java.util.*" %>
<html>
<head>
    <title>Some famous quips</title>
</head>
<body>
<h2>Some famous quips</h2>
<hr>
Who said this?
<ul>
<% 
    String fname;
    fname = getServletContext().getRealPath("/WEB-INF/quips.txt");
    
    try (Scanner in = new Scanner(new File(fname)))
    {
        while (in.hasNext())
        {
            out.println("<li>" + in.nextLine() + "</li>");
        }
    }
    catch (Exception ioe) { 
        out.println("<pre>");
        ioe.printStackTrace(new PrintWriter(out) );
        out.println("</pre>");
    }
%>
</ul>
<hr>
</body>
</html>
