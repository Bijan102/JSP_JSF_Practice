<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <title>JSP Expressions</title>
</head>
<body>
<h2>JSP Expressions</h2>
<ul>
  <li>Current time: <%= new java.util.Date() %></li>
  <li>Server: <%= application.getServerInfo() %></li>
  <li>Session ID: <%= session.getId() %></li>
  <li>The <code>testParam</code> form parameter:
      <%= request.getParameter("testParam") %></li>
</ul>
</body>
</html>
