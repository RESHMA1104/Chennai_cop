
<html>
<head>
	<title>Municipal Management</title>

<script language="javascript">

function Validation()
{

if (valid.username.value == "")
{
alert("Username is Required.");
return (false);
}

if (valid.password.value == "")
{
alert("Password is Required.");
return (false);
}

return true;
}

</script>
</head>
<link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
<body>
<table align="center" width="900">
<tr>
	<td colspan="2">
	<%@ include file="header.jsp" %>
	</td>
</tr>

<tr>
	<td width="150" bgcolor="#86AEDF">
	<%@ include file="mainmenu.jsp" %>
	</td>
	<td width="750">
<h4><font color="#843f8b"><div align=center>Enter Login id and Password</div></font></h4>
<form action="/chennaicopp/adminlogincheck.jsp" name="valid" onsubmit="return Validation()">
    <table align="center">

	<tr>
	<td>Username :</td>
	<td><input type=text name="username"></td>
	</tr>

	<tr>
	<td>Password :</td>
	<td><input type="password" name="password"></td>
	</tr>

	<tr>
	<td colspan="2" align="center"><input type=submit value="SUBMIT"></td>
	</tr>

	</table>
	</form>  
	</td>
      
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