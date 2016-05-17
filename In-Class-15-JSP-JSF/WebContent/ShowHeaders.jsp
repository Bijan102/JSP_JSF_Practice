<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <title>Request Headers</title>
</head>
<body>
<h1>ShowHeaders.jsp</h1>
<h3>Print all request headers using a loop</h3>
<hr>
<ul>
<%
    java.util.Enumeration<String> e = request.getHeaderNames();
    while (e.hasMoreElements())
    {
        String headerName = e.nextElement();
%>
        <li><b><%= headerName %> :</b> 
        <%= request.getHeader(headerName) %></li>
<%  
    }   
%>
</ul>
</body>
</html>