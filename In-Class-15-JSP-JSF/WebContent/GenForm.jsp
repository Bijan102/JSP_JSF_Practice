<%
//  GenForm.jsp -- A generic JSP form framework
//  --------------------------------------------------------
//  SECTION 1 : Define local variables for all fields
//  --------------------------------------------------------
    // A variable for every form field
    // An error message variable for each required fields
    
    boolean allOK = false;

//  --------------------------------------------------------
//  SECTION 2 : If form was submitted then get parameters
//              and validate required parameters
//  --------------------------------------------------------
    if (request.getMethod().equals("POST"))
    {
        // a) Retrieve each field from the form -----------
        //fld1 = request.getParameter("fld1");
        
        // b) Validate required fields --------------------
        //boolean fld1OK = false; /* validation condition */
        
        // c) Check all fields for form -------------------
        //allOK = fld1OK; /* && fld2OK etc. */
    }

// ---------------------------------------------------------
// SECTION 3 : The Output Section
// ---------------------------------------------------------
%>

<!-- Header at top of all pages [complete/incomplete] ------ -->
<html>
<head>
    <title>GenForm.jsp</title>
</head>
<body>
<form action='GenForm.jsp' method='POST'>

<!-- Section to print form before everything is OK --------- -->
<% if ( ! allOK ) { %>

    <p><input type='submit' value='Submit Form'>

<!-- Section to print if everything is OK [confirmation] ----- -->
<%  } else { %>

<!-- Output at the bottom of the page ----------------------- -->
<%  } %>
</form>
</body>
</html>
