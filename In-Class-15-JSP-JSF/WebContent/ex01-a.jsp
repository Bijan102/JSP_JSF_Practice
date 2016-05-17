<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
    <%@ page import = "utils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=utf-8">
<title>CS 272 Random Color Exercise</title>
</head>
<body style='background-color:<%= ColorUtils.randomColor()%>;'>
<h1>CS 272 Random Color Exercise</h1>
</body>
</html>