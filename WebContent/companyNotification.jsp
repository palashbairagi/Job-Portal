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
<tr><th>First Name</th><th>Last Name</th><th>Email Id</th><th>gender</th><th>Street</th><th>City</th><th>State</th>
<th>10th %</th><th>12th %</th><th>Graduation</th><th>Branch</th><th>%</th><th>Skills</th><th>Job Type</th><th></th></tr>

<%
int jobProviderId=Integer.parseInt((String)session.getAttribute("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("select * from job_provider_notification where job_provider_id=?");
stmt.setInt(1, jobProviderId);
ResultSet rs=stmt.executeQuery();
while(rs.next())
 {
	int id=rs.getInt("job_seeker_id");
	PreparedStatement pstmt=con.prepareStatement("select * from job_seeker where id=?");
	pstmt.setInt(1,id );
	ResultSet r=pstmt.executeQuery();

	while(r.next())
	{
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
	
	<tr><td><%=firstName%></td><td><%=lastName%></td><td><%=emailId%></td><td><%=gender %></td><td><%=street%></td><td><%=city%></td>
	<td><%=state %></td><td><%=hsc%></td><td><%=hs%></td><td><%=graduation%></td><td><%=branch%></td><td><%=degree%></td><td><%=skills%></td>
	<td><%=jobType%></td></tr>
	<%} }%> 
	</table>
	</body>
</html>