<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String emailId=request.getParameter("emailId");
String password=request.getParameter("password");
String contactNumber=request.getParameter("contactNumber");
String gender=request.getParameter("gender");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
String hsc=request.getParameter("hsc");
String hs=request.getParameter("hs");
String graduationName=request.getParameter("graduationName");
String branch=request.getParameter("branch");
String degree=request.getParameter("degree");
String skills=request.getParameter("skills");
String jobType=request.getParameter("jobType");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("insert into job_seeker(first_name,last_name,email_id,password,gender,street,city,state,hsc,hs,degree_name,branch,degree,skills,job_type,contact_number) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,emailId);
stmt.setString(4,password);
stmt.setString(5,gender);
stmt.setString(6,street);
stmt.setString(7,city);
stmt.setString(8,state);
stmt.setString(9,hsc);
stmt.setString(10,hs);
stmt.setString(11,graduationName);
stmt.setString(12,branch);
stmt.setString(13,degree);
stmt.setString(14,skills);
stmt.setString(15,jobType);
stmt.setString(16,contactNumber);
stmt.executeUpdate();
%>
Congratulation, You are Registered
<jsp:include page="index.jsp"></jsp:include>