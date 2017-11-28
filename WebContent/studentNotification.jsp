<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notification</title>
</head>
<body>
<table>
<tr><th>Company Name</th><th>Email Id</th><th>Contact Number</th><th>Street</th><th>City</th><th>State</th>
<th>Type</th><th></th></tr>

<%
int jobSeekerId=Integer.parseInt((String)session.getAttribute("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("select * from job_seeker_notification where job_seeker_id=?");
stmt.setInt(1, jobSeekerId);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{
	int id=Integer.parseInt(rs.getString("job_provider_id"));
	
	PreparedStatement pstmt=con.prepareStatement("select * from job_provider where id=?");
	pstmt.setInt(1, id);
	ResultSet r=pstmt.executeQuery();
	while(r.next())
	{
	String companyName=r.getString("company_name");
	String emailId=r.getString("email_id");
	String contactNumber=r.getString("contact_number");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	String type=r.getString("type");%>
	
	<tr><td><%=companyName%></td><td><%=emailId%></td><td><%=contactNumber%></td><td><%=street%></td><td><%=city%></td>
	<td><%=state%></td><td><%=type%></td><td><input type="submit" value="Apply"></td></tr>
	
	<% }}%>
	</table>
</body>
</html>