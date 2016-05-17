<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <title>LuckyTwo</title>
</head>
<body>
	<h1>Your new lucky number is   
<% 
    java.util.Random rand = new java.util.Random();
    double luckyNumber = rand.nextGaussian() * 50;
    luckyNumber = Math.abs(luckyNumber);
    out.println((int) luckyNumber);
%>
	</h1>
	<h1>More accurately, your new lucky number is 
		<%= luckyNumber %>
	</h1>

</body>
</html>


