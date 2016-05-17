<%-- QuipProblems.jsp --%>
<%@ page isErrorPage="true" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>Out of Order</title>
</head>
<body>
<h2>Out of Order</h2>
<hr>
<b>
<% if (exception instanceof FileNotFoundException ) { %>
    Call Jerry@aol.com. He forgot to update the quips file.
<% } else { %>
    Call Bob@earthlink.net. Something's hinky with the server.
<% } %>
</b>
<hr>
</body>
</html>
