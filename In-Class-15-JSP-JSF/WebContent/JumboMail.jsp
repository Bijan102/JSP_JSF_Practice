<%
//  --------------------------------------------------------
//  SECTION 1 : Define local variables for all fields
//  --------------------------------------------------------
    String name = "", nameErrMsg = "";
    String email = "", emailErrMsg = "";
    boolean allOK = false;

//  --------------------------------------------------------
//  SECTION 2 : If form was submitted then get parameters
//              and validate required parameters
//  --------------------------------------------------------
    if (request.getMethod().equals("POST"))
    {
        name = request.getParameter("name");
        email = request.getParameter("email");

        // Validate required fields ----------------------------
        boolean nameOK = name.length() > 0;
        if ( !nameOK )
            nameErrMsg = "You must enter a name";

        boolean emailOK = email.length() > 0;
        if ( !emailOK )
            emailErrMsg = "You must enter an email address";
        else if ( email.indexOf('@') < 0 )
        {
            emailOK = false;
            emailErrMsg = "Your email address is not valid";
        }

        // Check all fields for form ---------------------------
        allOK = emailOK && nameOK;
    }

// ---------------------------------------------------------
// SECTION 3 : The Output Section
// ---------------------------------------------------------
%>

<!-- Header at top of all pages [complete/incomplete] ------ -->
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <title>Jumbo's Mailing Madddddnesssss Subscription Page</title>
</head>
<body>
<form action='JumboMail.jsp' method='POST'>
<h2>Jumbo's Mailing Madness</h2>
<hr>

<!-- Section to print form before everything is OK --------- -->
<% if ( ! allOK ) { %>

    <font size="-1">
    Please enter your name :  </font><br>
    <input type="text" name="name" value="<%= name %>">
    <%= errorMsg(nameErrMsg) %><br>

    <font size="-1">
    Please enter your email address : </font><br>
    <input type="text" name="email" value="<%= email %>">
    <%= errorMsg(emailErrMsg) %>

    <p><input type='submit' value='Submit Form'>

<!-- Section to print if everyting is OK [confirmation] ----- -->
<%  } else { %>
    <h3>Thanks, <%= name %></h3>
    Jumbo's daily dose of inspiration will start arriving at
    <%= email %> today.<br>
    Thanks for subscribing!
    <hr>

<!-- Output at the bottom of the page ----------------------- -->
<%  } %>
</form>
</body>
</html>
<%!
    public static String errorMsg(String msg)
    {
        return "<font color='red'>"+ msg + "</font>";
    }
%>

