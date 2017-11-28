<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Provider</title>
</head>
<body>
<center>
<table>
<tr><th>Company Name</th><th>Email Id</th><th>Street</th><th>City</th><th>State</th>
<th>Type</th><th></th></tr>

<%
String designation=request.getParameter("designation");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("select * from job_provider where type=?");
stmt.setString(1, designation);
ResultSet r=stmt.executeQuery();
while(r.next())
{
	String companyName=r.getString("company_name");
	String emailId=r.getString("email_id");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	String type=r.getString("type");%>
	
	<form action="applyToCompany.jsp">
	<tr><td><%=companyName%></td><td><%=emailId%></td><td><%=street%></td><td><%=city%></td>
	<td><%=state%></td><td><%=type%></td><td><input type="submit" value="Apply"></td></tr></form> 
	
	<% }%>
	</table>
	</center>
	</body>
	</html>
	