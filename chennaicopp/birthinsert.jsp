<%@ page language="java" import="java.sql.*" %>
<html>
<head>
	<title>Municipal Management System</title>
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
	<%@ include file="adminmainmenu.jsp" %>
	</td>
	<td width="750">

<%

try
{

String regno = request.getParameter("registerno");
String cname = request.getParameter("childname");
String gender = request.getParameter("reggender");
String dob = request.getParameter("regdatename");
String pob = request.getParameter("regpob");
String nof = request.getParameter("regfather");
String nom = request.getParameter("regmother");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","resh","mahi");
PreparedStatement st = cn.prepareStatement("insert into birthdetailsdemo values(?,?,?,?,?,?,?)");

st.setString(1, regno);
st.setString(2, cname);
st.setString(3, gender);
st.setString(4, dob);
st.setString(5, pob);
st.setString(6, nof);
st.setString(7, nom);

st.executeUpdate();
out.println("<h1>Birth Details is Successfully Registred.</h1>");
%>
<a href="/chennaicopp/index.jsp" class=bblink><font color="red"><h3>Go To Main Page</h3></font></a>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

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