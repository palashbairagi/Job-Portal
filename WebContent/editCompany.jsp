<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
int id=Integer.parseInt((String)session.getAttribute("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("select * from job_provider where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	String companyName=r.getString("company_name");
	String emailId=r.getString("email_id");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	String contactNumber=r.getString("contact_number");
	String type=r.getString("type");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Company</title>
</head>
<body>
<form action="updateCompany.jsp" name="updateCompanyForm" id="updateCompanyForm">
<center>
<table>
<tr>
<td>Company Name</td>
<td><input type="text" name="companyName" id="companyName" value="<%=companyName%>"></td></tr>
<tr>
<td>Email Id</td>
<td><input type="text" name="emailId" id="emailId" value="<%=emailId%>" disabled></td></tr>
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
<td>Type</td>
<td><input type="text" name="type" id="type" value="<%=type %>"></td></tr>
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
