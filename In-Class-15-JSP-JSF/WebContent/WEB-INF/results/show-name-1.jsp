<!DOCTYPE html>
<%-- JSP 1.2 Syntax --%>
<html>
<head>
	<meta charset='utf-8' />
	<title>Thanks for Registering</title>
	<link rel="stylesheet" href="./css/styles.css" />
</head>
<body>
	<h1>Thanks for Registering (JSP 1.2)</h1>
	<jsp:useBean id='name' 
				 type='beans.NameBean' 
				 scope='session' />
	<h2>First Name: <jsp:getProperty name='name' property='firstName' /></h2>
	<h2>Last Name: <jsp:getProperty name='name' property='lastName' /> </h2>
</body>
</html>



