<%-- Using the include directive to include JSP resources --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <title>Include01.jsp - Including JSP Resources</title>
</head>
<body>

<%@ include file="/WEB-INF/include/header.jspf" %>

<h1>Including JSP Resources</h1>
<hr>
The copyright at the bottom of the page uses JSP to
calculate the current year. Both the header and the footer
have been included by using the JSP <b>include directive</b>
<p>

<%@ include file="/WEB-INF/include/footer.jspf" %>

</body>
</html>
