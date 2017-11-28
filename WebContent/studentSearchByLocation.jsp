<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Seeker</title>
</head>
<body>

<center>
<table>
<tr><th>First Name</th><th>Last Name</th><th>Email Id</th><th>gender</th><th>Street</th><th>City</th><th>State</th>
<th>10th %</th><th>12th %</th><th>Graduation</th><th>Branch</th><th>%</th><th>Skills</th><th>Job Type</th><th></th></tr>

<%
String location=request.getParameter("location");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("select * from job_seeker where city=?");
stmt.setString(1,location);
ResultSet r=stmt.executeQuery();
while(r.next())
 {
	String id=r.getString("id");
	String firstName=r.getString("first_name");
	String lastName=r.getString("last_name");
	String emailId=r.getString("email_id");
	String password=r.getString("password");
	String gender=r.getString("gender"); 
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	String hsc=r.getString("HSC");
	String hs=r.getString("HS");
	String graduation=r.getString("degree_name");
	String branch=r.getString("branch");
  	String degree=r.getString("degree");
	String skills=r.getString("skills");
	String jobType=r.getString("job_type");%>
	
	<form action="applyToCompany.jsp">
	<input type='hidden' name='id' id='id' value="<%=id%>">
	<tr><td><%=firstName%></td><td><%=lastName%></td><td><%=emailId%></td><td><%=gender %></td><td><%=street%></td><td><%=city%></td>
	<td><%=state %></td><td><%=hsc%></td><td><%=hs%></td><td><%=graduation%></td><td><%=branch%></td><td><%=degree%></td><td><%=skills%></td>
	<td><%=jobType%></td><td><input type="submit" value="Apply"></td></tr></form>
	<% }%> 
	</table>
	</center>
	</body>
	</html>
	