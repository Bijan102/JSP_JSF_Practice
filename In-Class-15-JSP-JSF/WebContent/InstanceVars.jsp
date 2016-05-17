<html>
<head>
    <title>InstanceVars.jsp</title>
</head>
<body>
<h2>InstanceVars.jsp</h2>
<b>Prints "click-through's" from other pages</b>
<hr>
<ul>
<%-- Create a field named refs to hold referrals ------ --%>
<%! java.util.Properties refs = new java.util.Properties(); %>

<%  // Retrieve the Referer header
    String thisRef = request.getHeader("Referer");
    
    // Handle the case where the user isn't referred
    if (thisRef == null)
        thisRef = "No referral--direct connect";
    
    // Retrieve the number of referrals from that link
    // Set default to "0" if first visit
    String numRefs = refs.getProperty(thisRef, "0");
    
    // Convert to int, add current visit, and store back in refs
    int n = Integer.parseInt(numRefs) + 1;
    refs.setProperty(thisRef, "" + n);

    // Print the values to the screen
    java.util.Enumeration<?> e = refs.propertyNames();
    while (e.hasMoreElements())
    {
        String site = (String) e.nextElement();
%>
        <li>
        <%= site %>
        <b> : Clicked-through 
        <%= refs.getProperty(site) %>
        <%= (n > 1) ? " times" : "time" %>
        </b> 
        </li>
<%
    }
%>
</ul>

<% // Put a link back to the referrer if not direct
    if (! thisRef.equals("No referral--direct connect") ) 
    { 
%>
    <a href="<%= thisRef %>">Back to <%= thisRef %></a> 
<% } %>

</body>
</html>