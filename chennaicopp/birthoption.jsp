
<html>
<head>
	<title>Birth Option</title>
</head>
<link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html;">
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="css/calendar.css" rel="stylesheet" type="text/css">
<body>
<table align="center" width="900">
<tr>
	<td colspan="2">
	<%@ include file="birthheader.jsp" %>
	</td>
</tr>

<tr>
	<td width="150" bgcolor="#86AEDF">
	<%@ include file="adminmainmenu.jsp" %>
	</td>
	<td width="750">
<h4><font color="#843f8b"><div align=center>Choose Birth Option</div></font></h4>
<br><br>

<table align="center">
<tr><td align=center><a href="/chennaicopp/addbirth.jsp" class=bblink><font color="red">Add Birth</font></a></td></tr>
<tr><td><br></td></tr>
<tr><td align=center><a href="/chennaicopp/viewbirth1.jsp" class=bblink><font color="red">View Birth</a></font></td></tr>
<tr><td><br></td></tr>
<tr><td align=center><a href="/chennaicopp/editbirth1.jsp" class=bblink><font color="red">Modify Birth</a></font></td></tr>      
</table>
<br>
<table align="center">
             <tr>
			   <td><%@ include file="footer.jsp" %></td>
             </tr>

</table>
</font>
  
</body>
</html>