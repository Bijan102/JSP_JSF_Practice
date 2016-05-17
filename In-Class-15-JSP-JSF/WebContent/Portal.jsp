<%--    Portal.jsp
        Redirect AOL users to Earthlink, and MSIE
        users to Fire
--%>
<%
    String userAgent    = request.getHeader("User-Agent");
    String remoteHost   = request.getRemoteHost();

    // Check that neither are null
    if (userAgent == null)  userAgent = "";
    if (remoteHost == null) remoteHost = "";

    // Check for IE, AOL, and both
    boolean isMSIE  = userAgent.indexOf("Trident") >= 0;
    boolean isAOL   = remoteHost.indexOf("AOL") >= 0;
    boolean isBoth = isMSIE && isAOL;

    // Use the JSP forward tag to send the users to
    // correct pages on our local host
    if ( isBoth ) { %> <jsp:forward page="/WEB-INF/include/PortalBoth.jsp" /> <% }
    if ( isMSIE ) { %> <jsp:forward page="/WEB-INF/include/PortalMSIE.jsp" /> <% }
    if ( isAOL  ) { %> <jsp:forward page="/WEB-INF/include/PortalAOL.jsp" />  <% }
%>
<%-- None of these, do the "real" Portal Page --%>
<jsp:forward page="/WEB-INF/include/PortalOK.html" />

