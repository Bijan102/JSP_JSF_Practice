<%-- Using the include action to include JSP resources --%>
<html>
<head>
    <title>Include02.jsp - Including JSP Resources</title>
</head>
<body>

<jsp:include page="/WEB-INF/include/header.jspf" flush="true"/>

<h1>Including JSP Resources</h1>
<hr>
The copyright at the bottom of the page uses JSP to
calculate the current year. The header and the footer have
been inserted at runtime by using the JSP <b>include action</b>
<p>

<jsp:include page="/WEB-INF/include/footer.jsp" flush="true" />

</body>
</html>
