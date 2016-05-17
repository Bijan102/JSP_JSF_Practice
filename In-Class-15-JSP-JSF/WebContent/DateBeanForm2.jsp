<%-- 
    Document   : DateBeanForm2
    Created on : Spring 2016
    Author     : Stephen Gilbert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="UTF-8">
        <title>Using EL with Beans</title>
    </head>
    <body>
        <h1>Form Processing with DateBean2 and EL</h1><hr>

        <%--  Parameters b1, b2, b3, b4 put in request by servlet --%>
        Beans put into page, request, session and application: <br>

        <%-- Method 1 ----------------------------------- --%>
        Request context : ${b1.fullDate} <br>

        <%-- Method 2 ----------------------------------- --%>
        Session context : ${b2.fullDate} <br>

        <%-- Method 3 ----------------------------------- --%>
        Application context :  ${b3.fullDate} <br>

        <hr>
        <a href="DateBeanForm.html">Back to Form</a>
    </body>
</html>
