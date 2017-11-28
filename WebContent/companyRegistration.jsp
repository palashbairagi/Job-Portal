<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String companyName=request.getParameter("companyName");
String emailId=request.getParameter("emailId");
String password=request.getParameter("password");
String contactNumber=request.getParameter("contactNumber");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
String type=request.getParameter("type");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("insert into job_provider (company_name,email_id,password,street,city,state,type,contact_number) values(?,?,?,?,?,?,?,?)");
stmt.setString(1,companyName);
stmt.setString(2,emailId);
stmt.setString(3,password);
stmt.setString(4,street);
stmt.setString(5,city);
stmt.setString(6,state);
stmt.setString(7,type);
stmt.setString(8,contactNumber);
stmt.executeUpdate();
%>
Congratulation, You are Registered
<jsp:include page="index.jsp"></jsp:include>