<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% 
int id=Integer.parseInt((String)session.getAttribute("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("select * from job_seeker where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	String firstName=r.getString("first_name");
	String lastName=r.getString("last_name");
	String emailId=r.getString("email_id");
	String password=r.getString("password");
	String contactNumber=r.getString("contact_number");
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student</title>
</head>
<body>
<form action="updateStudent.jsp" name="updateStudentForm" id="updateStudentForm">
<center>
<table>
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" id="firstName" value="<%=firstName %>"></td></tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" id="lastName" value="<%=lastName%>"></td></tr>
<tr>
<td>Email Id</td>
<td><input type="text" name="emailId" id="emailId" value="<%=emailId%>" disabled></td></tr>
<tr><td>Gender</td><% 
if(gender.equals("M")){%>
<td><input type="radio" name="gender" id="gender" value="M" checked>Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="gender" id="gender" value="F">Female</td></tr>
<%}
else
{%>
<tr>
<td><input type="radio" name="gender" id="gender" value="M">Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="gender" id="gender" value="F" checked>Female</td></tr>
<%} 
%>
<tr>
<td>Contact Number</td><td><input type='text' name='contactNumber' id='contactNumber' value="<%=contactNumber%>"></td>
</tr>
<tr>
<td>Street</td>
<td><input type="text" name="street" id="street" value="<%=street%>"></td></tr>
<tr>
<td>City</td>
<td><input type="text" name="city" id="city" value="<%=city%>"></td></tr>
<tr>
<td>State</td>
<td><input type="text" name="state" id="state" value="<%=state%>"></td></tr>
<tr>
<td>10th %</td>
<td><input type="text" name="hsc" id="hsc" value="<%=hsc%>"></td></tr>
<tr>
<td>12th %</td>
<td><input type="text" name="hs" id="hs" value="<%=hs%>"></td></tr>
<tr>
<td>Degree Name</td>
<td><input type="text" name="graduationName" id="graduationName" value="<%=graduation%>"></td></tr>
<tr>
<td>Branch</td>
<td><input type="text" name="branch" id="branch" value="<%=branch %>"></td></tr>
<tr>
<td>Percentage</td>
<td><input type="text" name="degree" id="degree" value="<%=degree%>"></td></tr>
<tr>
<td>Skills</td>
<td><input type="text" name="skills" id="skills" value="<%=skills %>"></td></tr>

<tr>
<td>Job Type</td>
<td><input type="text" name="jobType" id="jobType" value=<%=jobType %>></td></tr>
<tr><td><input type="submit" name=update value="update"></td>
<td><input type="reset" name=cancel value="Cancel"></td>
</tr>
</table>
</center>
</form>
</body>
</html>
	<%
}%>
