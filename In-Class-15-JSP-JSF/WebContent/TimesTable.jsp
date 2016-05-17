<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <title>TimesTable.jsp</title>
</head>
<body>
<div style='margin:auto;text-align:center;'>
<h2>TimesTable.jsp</h2>
<b>Prints a 12 * 12 Times Table</b>
<hr>

<!-- This HTML starts the table tag -->
<table style='border:1px solid navy; margin:auto;width:90%;'>

<%-- This scriptlet prints the header row --%>
<tr bgcolor='#FFC0FF'>
<%
    for (int col = 1; col <= 12; col++)
    {
        %><td align='right'><%= col %></td><%
    }
%>
</tr>

<% // This scriptlet prints the 12 x 12 times table %>
<%
    for (int row = 1; row <= 12; row++)
    {
        %><tr><%
        for (int col = 1; col <= 12; col++)
        {
        %><td align='right'><%= row * col %></td><%
        }
        %></tr><%
    }
%>

</table>
</div>
</body>
</html>