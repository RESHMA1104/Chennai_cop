<%@ page import="java.sql.*"%>
<html>
<head>
<title>Birth Edit</title>

<script language="javascript">

function Validation()
{

if (valid.childname.value == "")
{
alert("Child Name is Required.");
return (false);
}

if (parseInt(valid.childname.value))
{
alert("Child Name is Wrong,You must type String");
return (false);
}

if (valid.regdatename.value == "")
{
alert("DOB is Required.");
return (false);
}
if (valid.regfather.value == "")
{
alert("Father Name is Required.");
return (false);
}

if (parseInt(valid.regfather.value))
{
alert("Father Name is Wrong,You must type String");
return (false);
}
if (valid.regmother.value == "")
{
alert("Mother Name is Required.");
return (false);
}

if (parseInt(valid.regmother.value))
{
alert("Mother Name is Wrong,You must type String");
return (false);
}
return true;
}
</script>


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
<h4><font color="#843f8b"><div align=center>Enter Birth Details</div></font></h4>

<form action="/chennaicopp/editbirth3.jsp" name="valid" method="post" onsubmit="return Validation()">
    <table align="center">

<% 

String bregno=request.getParameter("birthregno");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","resh","mahi");
PreparedStatement st = cn.prepareStatement("select * from birthdetailsdemo where REGNO='"+bregno+"'");
ResultSet rs = st.executeQuery();

 if(rs.next())
 { 
	 String breno = rs.getString(1);
 %>

<tr>
<td>Enter Register Number:
</td>
<td>
<input type=text name="registerno" value="<%=breno%>" disabled="disabled">
<input type="hidden"name="birregno" value="<%=breno%>">
</td>
</tr>

<tr>
<td>Child Name:
</td>
<td><input type=text name="childname" value="<%=rs.getString(2)%>">
</td>
</tr>

<tr>
<td>Gender</td>
<td>
<%
	String regen=rs.getString(3);
if(regen.equals("Male"))
	 {
	%>
<input type="radio" name="reggender"  value="Male" checked> Male 
<input type="radio" name="reggender" value="Female"> Female
<%
		}
	else
	 {
		%>
<input type="radio" name="reggender"  value="Male" > Male 
<input type="radio" name="reggender" value="Female"checked> Female
	<%
		}
	%>

</td>
</tr>

 <tr>
     <form>
      <td>
	  Date of Birth : 
	  </td>
	  <td><input type="text" name="regdatename" value="<%=rs.getString(4)%>"><a href="#" onClick="setYears(1947, 2030);
       showCalender(this, 'regdatename');">
      <img src="calender.png"></a>

    </form>
	
     <table id="calenderTable">
        <tbody id="calenderTableHead">
          <tr>
            <td colspan="4" align="center">
	          <select onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>
            </td>
            <td colspan="2" align="center">
			    <select onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));" id="selectYear">
				</select>
			</td>
            <td align="center">
			    <a href="#" onClick="closeCalender();"><font color="#003333" size="+1">X</font></a>
			</td>
		  </tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
    </td>
	</tr>


<tr>
<td>Place of Birth</td>
<td>


<%
	String repob=rs.getString(5);
if(repob.equals("Home"))
	 {
	%>
<input type="radio" name="regpob"  value="Home" checked> Home 
<input type="radio" name="regpob" value="Hospital"> Hospital  
<input type="radio" name="regpob" value="NotKnown"> NotKnown
<%
		}
	else if(repob.equals("Hospital"))
	 {
		%>
<input type="radio" name="regpob"  value="Home" > Home 
<input type="radio" name="regpob" value="Hospital"checked> Hospital  
<input type="radio" name="regpob" value="NotKnown"> NotKnown
	<%
		}
	else
	 {
	%>
<input type="radio" name="regpob"  value="Home" > Home 
<input type="radio" name="regpob" value="Hospital"> Hospital  
<input type="radio" name="regpob" value="NotKnown"checked> NotKnown
   <%
	 }
	%>
</td>
</tr>

<tr>
<td>
Name of Father :
</td>
<td><input type=text name="regfather" value="<%=rs.getString(6)%>">
</td>
</tr>


<tr>
<td>
Name of Mother :
</td>
<td><input type=text name="regmother" value="<%=rs.getString(7)%>">
</td>
</tr>

<tr><td><br></td></tr>
	<tr>
	<td colspan="2" align="center"><input type=submit value="SUBMIT"></td>
	</tr>

	</table>
	</form>  
	</td>
      
</table>
<%
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