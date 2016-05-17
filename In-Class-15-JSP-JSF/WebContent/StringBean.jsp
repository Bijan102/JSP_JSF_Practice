<!DOCTYPE html">
<!-- 
Simple example of jsp:useBean and manipulating properties
with jsp:setProperty and jsp:getProperty and
with explicit Java code in scriptlets and expressions. 
-->
<html lang='en'>
<head>
	<title>Using JavaBeans with JSP</title>
</head>
<body>
<h1>Using JavaBeans with JSP</h1>
<hr />
<jsp:useBean id="stringBean" class="beans.StringBean" />
<ol>
<li>Initial value (from jsp:getProperty):
    <i><jsp:getProperty name="stringBean" property="message" /></i>
</li>
<li>Initial value (from JSP expression):
    <i><%= stringBean.getMessage() %></i>
</li>
<li><jsp:setProperty name="stringBean" 
                     property="message" 
                     value="Best string bean: Fortex" />
    Value after setting property with jsp:setProperty:
    <i><jsp:getProperty name="stringBean" 
                        property="message" /></i>
</li>
<li><% stringBean.setMessage("My favorite: Kentucky Wonder"); %>
    Value after setting property with scriptlet:
    <i><%= stringBean.getMessage() %></i>
</li>
</ol>        
<hr /> 
</body></html>