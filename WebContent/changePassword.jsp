
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
</head>
<body>
<%
int id=Integer.parseInt((String)session.getAttribute("id"));
String accountType=(String)session.getAttribute("accountType");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobPortal","root","root");

if(accountType.equals("s"))
{
PreparedStatement stmt=con.prepareStatement("update job_seeker set password=? where id=?");
stmt.setString(1,password);
stmt.setInt(2,id);
stmt.executeUpdate();%>
<b>Password Successfully changed</b><br>
<jsp:include page="studentHome.jsp"></jsp:include>
<%
}
else
{
	PreparedStatement stmt=con.prepareStatement("update job_provider set password=? where id=?");
	stmt.setString(1,password);
	stmt.setInt(2,id);
	stmt.executeUpdate();%>	
	<b>Password Successfully changed</b><br>
	<jsp:include page="companyHome.jsp"></jsp:include>
<%}%>

</body>
</html>