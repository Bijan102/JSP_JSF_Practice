<html>
<head> <title>Methods.jsp</title> </head>
<body>
<h2>Methods.jsp</h2>
<b>Prints "click-through's" from other pages</b>
<hr>

<%  updateClickThroughs(request); %>
<%= clickThroughList() %>

<hr>
<%= displayBackLink(request) %> 

</body>
</html>

<%! // Fields ====================================================
    java.util.Properties refs = new java.util.Properties();
    
    // Methods ===================================================
    // updateClickThroughs() method ------------------------------
    public void updateClickThroughs(HttpServletRequest request)
    {
        // Retrieve the Referer header
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
    }
    
    // clickThroughList() method -----------------------------------
    public String clickThroughList()
    {
        java.util.Enumeration<?> e = refs.propertyNames();
        String result = "<ul>";
        while (e.hasMoreElements())
        {
            String site = (String) e.nextElement();
            String visits = refs.getProperty(site);
            result += "<li>" + site + 
                "<b> : Clicked-through " + visits +
                ((visits.equals("1")) ? " time" : " times") +
                "</b> </li>\n";
        }
        return result+"</ul>";
    }
    
    // displayBackLink() method -----------------------------------
    public String displayBackLink(HttpServletRequest request)
    {
        String result = request.getHeader("Referer");
        if (result == null )
            return "";
        
        return "<a href='" + result + "'>" + result + "</a>";
    }
%>
