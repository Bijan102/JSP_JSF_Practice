<!DOCTYPE html>
<html lang = 'en'>
<head><title> My first JSP Page</title></head>
<body>
<h1>My first JSP Page.</h1>
<h1>Page has been visited <%= hits++ %> times</h1>
<%! private int hits = 1000; %>
</body>
</html>
