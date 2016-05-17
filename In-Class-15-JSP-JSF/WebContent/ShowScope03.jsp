<html>
<head>
    <title>ShowScope03.jsp</title>
</head>
<body>
<h1>ShowScope03.jsp</h1><hr>

<%-- Create the values of 4 beans --%>
<jsp:useBean id="b1" class="beans.DateBean2" scope="page" />
<jsp:useBean id="b2" class="beans.DateBean2" scope="request" />
<jsp:useBean id="b3" class="beans.DateBean2" scope="session" />
<jsp:useBean id="b4" class="beans.DateBean2" scope="application" />

<%-- Display the value of four JavaBeans --%>
b1 = <jsp:getProperty name="b1" property="longDate" /><br>
b2 = <jsp:getProperty name="b2" property="longDate" /><br>
b3 = <jsp:getProperty name="b3" property="longDate" /><br>
b4 = <jsp:getProperty name="b4" property="longDate" /><br>

<hr>
</body>
</html>
