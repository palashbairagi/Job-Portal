<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from doctor_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id=Integer.parseInt(r.getString("id"));
	String firstName=r.getString("firstName");
	String lastName=r.getString("lastName");
	String gender=r.getString("gender");
	String age=r.getString("age");
	String phoneNumber=r.getString("phoneNumber");
	String mobileNumber=r.getString("mobileNumber");
	String emailId=r.getString("emailId");
	String houseNumber=r.getString("houseNumber");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	String designation=r.getString("designation");
	String specialization=r.getString("specialization");
	String experience=r.getString("experience");
	}%> 

</body>
</html>