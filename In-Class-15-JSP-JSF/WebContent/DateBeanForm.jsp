<html>
<head>
    <title>Processing a Form with DateBean2</title>
</head>
<body>
<h1>Form Processing with DateBean2</h1><hr>

<%-- Use four JavaBeans --%>
<jsp:useBean id="b1" class="beans.DateBean2" />
<jsp:useBean id="b2" class="beans.DateBean2" />
<jsp:useBean id="b3" class="beans.DateBean2" />
<jsp:useBean id="b4" class="beans.DateBean2" />

<%--  Four different ways to capture a parameter --%>
Different ways to capture a parameter<br>

<%-- Method 1 ----------------------------------- --%>
Method 1 [Brute Force] : 

<% String d01 = request.getParameter("date01"); %>

<jsp:setProperty name="b1" 
    property="date" 
    value="<%= d01 %>"  />

<jsp:getProperty name="b1" property="fullDate"   /> <br>

<%-- Method 2 ----------------------------------- --%>
Method 2 [Named parameter] :
<jsp:setProperty name="b2" 
    property="date" 
    param="date02"  />

<jsp:getProperty name="b2" property="fullDate"   /> <br>

<%-- Method 3 ----------------------------------- --%>
Method 3 [Unnamed parameter] :

<jsp:setProperty name="b3" property="date" />
<jsp:getProperty name="b3" property="fullDate"   /> <br>

<%-- Method 4 ----------------------------------- --%>
Method 4 [All parameters] :

<jsp:setProperty name="b4" property="*" />
<jsp:getProperty name="b4" property="fullDate"   /> <br>

<hr>
<a href="DateBeanForm.html">Back to Form</a>

</body>
</html>
