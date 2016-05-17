<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8' />
    <title>Using a Date Bean</title>
</head>
<body>
<h1>Using a Date "Bean"</h1><hr>

<%-- Using a Java Bean --%>
<jsp:useBean id="now" class="java.util.Date" />

<%-- Displaying the bean properties --%>
Current time is 
    <jsp:getProperty name="now" property="hours" /> :
    <jsp:getProperty name="now" property="minutes" /> 
<br>

<%-- Changing the bean properties --%>
<jsp:setProperty name="now" property="hours" value="11" />

After modification the time is 
    <jsp:getProperty name="now" property="hours" /> :
    <jsp:getProperty name="now" property="minutes" /> 
<br>
<%-- Changing the bean properties dynamically --%>
<jsp:setProperty name="now" property="time" 
        value="<%= System.currentTimeMillis() + 60 * 60 * 1000 %>" />

After dynamic modification the time is 
    <jsp:getProperty name="now" property="hours" /> :
    <jsp:getProperty name="now" property="minutes" /> 

<br><hr>
</body>
</html>
