<%  // SessionWiz.jsp : the controlling Wizard
   String name  = request.getParameter("name");
   String mail  = request.getParameter("mail");
   String phone = request.getParameter("phone");

   // Put non-null parameters into the session
   if (name != null) session.setAttribute("name", name);
   if (mail != null) session.setAttribute("mail", mail);
   if (phone != null) session.setAttribute("phone", phone);

   // Retrieve the values for each session variable
   name = (String) session.getAttribute("name");
   mail = (String) session.getAttribute("mail");
   phone = (String) session.getAttribute("phone");

   // Do name validation here
   if ( name == null || name.length() < 1) { %>
       <jsp:forward page="/WEB-INF/include/Wiz1.html" />
   <% }
   // Do email validation here
   if ( mail == null || mail.length() < 1) { %>
        <jsp:forward page="/WEB-INF/include/Wiz2.html" />
   <% }
   // Do phone validation here
   if ( phone == null || phone.length() < 1) { %>
        <jsp:forward page="/WEB-INF/include/Wiz3.html" />
   <% }
%>

<jsp:forward page="/WEB-INF/include/SessionWizDone.jsp" />
