<%@ page language="java" import="java.sql.*" %>
<html>
<head>
	<title>Municipal Management</title>
	
</head>
<link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
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

<%

try
{
String bid=request.getParameter("birthregno");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","resh","mahi");
PreparedStatement st = cn.prepareStatement("select * from birthdetailsdemo where REGNO='"+bid+"'");
ResultSet rs = st.executeQuery();
%>

<h2 align="center">Birth Details</h2><br>
<table align="center" border="3">
<tr>
<th>BirthRegNO</th><th>ChildName</th><th>BirthGender</th><th>DateOfBirth</th><th>PlaceOfBirth</th><th>FatherName</th><th>MotherName</th>
</tr>
<%
while (rs.next())
{
%>

<tr><td><%= rs.getString(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td><td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td><td><%= rs.getString(7) %></td></tr>

<%
}
%>
</table><br><br>
<a href="/chennaicopp/emploginsuccess.jsp">Employee Home Page</a><br>
<%
rs.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>