<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <title>A simple if statement</title>
</head>
<body>
<hr>
<div>
<p style='width:500px;margin:auto;'>
<b>Best viewed with
<% String userAgent = request.getHeader("User-Agent");
    if (userAgent.indexOf("Trident") >= 0) { %>
        <br><img src='images/chrome.png'>
<% } else if (userAgent.indexOf("Firefox") > 0) { %>
        <br><img src='images/ie.png'>
<% } else if (userAgent.indexOf("Chrome") > 0) { %>
        <br><img src='images/firefox.png'>
<% } %>
</b>
</p>
</div>
<hr>
</body>
</html>
