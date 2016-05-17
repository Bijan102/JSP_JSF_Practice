<html>
<head>
    <title>Sharing Beans Between Pages</title>
</head>
<body>
<h1>Sharing Beans Between Pages</h1><hr>

<%-- Create and display the values of 4 beans --%>
<b>Inside DateBeanScope.jsp</b><br>
<jsp:useBean id="b1" class="beans.DateBean2" scope="page" />
<jsp:setProperty name="b1" property="date" value="01/01/50" />
b1 = <jsp:getProperty name="b1" property="mediumDate" /><br>

<jsp:useBean id="b2" class="beans.DateBean2" scope="request" />
<jsp:setProperty name="b2" property="date" value="Feb 2, 1960" />
b2 = <jsp:getProperty name="b2" property="mediumDate" /><br>

<jsp:useBean id="b3" class="beans.DateBean2" scope="session" />
<jsp:setProperty name="b3" property="date" value="March 3, 1970" />
b3 = <jsp:getProperty name="b3" property="mediumDate" /><br>

<jsp:useBean id="b4" class="beans.DateBean2" scope="application" />
<jsp:setProperty name="b4" property="date" value="Apr 4, 1980" />
b4 = <jsp:getProperty name="b4" property="mediumDate" /><br>

<%-- Visible in static include scope --%>
<p><b>Inside a static included page ShowScope01.jsp : </b>  <br>
<%@  include file="ShowScope01.jsp" %>

<%-- Visible in dynamic include scope --%>
<p><b>Inside a dynamic included page ShowScope02.jsp : </b>  <br>
<jsp:include page="ShowScope02.jsp" flush="true" />

<%-- In another page altogether --%>
<p><a href="ShowScope03.jsp">
<b>In another page in same session</b></a><br>

</body>
</html>
