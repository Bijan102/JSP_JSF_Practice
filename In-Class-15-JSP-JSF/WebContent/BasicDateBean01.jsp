<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8' />
    <title>The BasicDateBean</title>
</head>
<body>
<h1>The BasicDateBean</h1><hr>

<%-- Using a Java Bean; uncomment the line below to run --%>
<%-- <jsp:useBean id="now" class="beans.BasicDateBean" /> --%>

<%-- Displaying the bean properties --%>
On the server the date is : 
<jsp:getProperty name="now" property="date" /> <br>

<%-- Changing the date property --%>
Now changing the date property to Dec 25, 2010<br>
<jsp:setProperty name="now" 
    property="date"  
    value="Dec 25, 2010"/> 

<%-- Displaying the bean properties again --%>
After changing, the date is : 
<jsp:getProperty name="now" property="date" /> <br>


<hr />

</body>
</html>
