<%-- The main Surf.jsp page ----------------------- --%>
<%  // Get the page parameters
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    if (title == null )
        title = "Steve's Surf Stuff";
    if (content == null )
        content = "surf-main";
    content = "/WEB-INF/include/" + content +".jspf";
%>

<!doctype html>
<html>
<head>
   <title><%= title %></title>
</head>
<body background="images/background.gif">

<table style='width:500px'>

<!-- First row for page ---------------------------- -->
<tr>
    <td width="130" align="left" valign="top">

        <img src="images/beach.jpg"
             border="0" height="87" width="130">

       <jsp:include page="/WEB-INF/include/surfToc.jspf" flush="true" />

    </td>

    <!-- left margin for content pane -------------- -->
    <td WIDTH="15"></td>

    <!-- content dynamically loaded here ----------- -->
    <td align="left" valign="top" width="350">
        <jsp:include page="<%= content %>" flush="true" />

        <%@ include file="/WEB-INF/include/footer.jspf" %>

    </td>

    <!-- right margin for content pane ------------- -->
    <td width="15"></td>
</tr>
</table>

</body>
</html>
