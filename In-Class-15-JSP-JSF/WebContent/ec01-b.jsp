<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=utf-8">
<title>CS 272 Color input Exercise</title>
</head>
<% String color = request.getParameter("bg");
	if (color == null) color = utils.ColorUtils.randomColor();
%>
<body style='background-color:<%= color %>;'>
<h1>CS 272 Color input Exercise</h1>
</body>
</html>