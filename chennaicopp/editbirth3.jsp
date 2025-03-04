<%@ page import="java.sql.*"%>
<html>
<head>
	<title>Birth Edit</title>
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
<%
try
{

String regno = request.getParameter("birregno");
String cname = request.getParameter("childname");
String gender = request.getParameter("reggender");
String dob = request.getParameter("regdatename");
String pob = request.getParameter("regpob");
String nof = request.getParameter("regfather");
String nom = request.getParameter("regmother");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","resh","mahi");

Statement st = cn.createStatement();
st.executeUpdate("update birthdetailsdemo set cname='"+cname+"',gender='"+gender+"',dob='"+dob+"',pob='"+pob+"',nof='"+nof+"',nom='"+nom+"' where regno='"+regno+"' ");

out.println("<h1>Birth Details is Successfully Modified.</h1>");
%>
<a href="/chennaicopp/index.jsp" class=bblink>Go To Main Page</a>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>
<br>
<table align="center">
             <tr>
			   <td><%@ include file="footer.jsp" %></td>
             </tr>

</table>
</font>
  
</body>
</html>