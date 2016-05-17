<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Thanks for Registering</title>
</head>
<body>
<div style='width:500px;margin:auto;text-align:center;border:1px dashed gray;'>
    <h2 style='border-bottom:1px solid silver;'>Welcome to WizWorld</h2>
	<p>Thanks for registering!</p>
	<div style='width:80%; margin:auto;text-align:left;'>
	<ul>
    <li>Name : <%= session.getAttribute("name") %></li>
    <li>Email : <%= session.getAttribute("mail") %></li>
    <li>Phone : <%= session.getAttribute("phone") %></li>
    </ul>
    </div>
</div>
</body>
</html>

<% // Remove the session attributes when done
    session.removeAttribute("name");
    session.removeAttribute("mail");
    session.removeAttribute("phone");
%>
