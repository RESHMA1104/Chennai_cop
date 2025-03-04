<%@ page language="java" import="java.sql.*" %>
<%
out.println("<html>");
out.println("<head><title>Login Page</title></head>");
out.println("<body bgcolor = \"#ffffff\">");
try
{
	String UNAME = request.getParameter("username");
    String PWD = request.getParameter("password");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","resh","mahi");
PreparedStatement st = cn.prepareStatement("select * from adminlogin where UNAME=? AND PWD=?");
st.setString(1,UNAME);
st.setString(2,PWD);
ResultSet rs = st.executeQuery(); 
if(rs.next())
	{
 	response.sendRedirect("/chennaicopp/adminloginsuccess.jsp");
	}
	else
		{
	response.sendRedirect("/chennaicopp/adminloginfailure.jsp");
	}
}
catch(Exception e)
{
e.printStackTrace();
}

%>