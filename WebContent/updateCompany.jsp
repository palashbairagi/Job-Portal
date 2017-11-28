<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String companyName=request.getParameter("companyName");
String contactNumber=request.getParameter("contactNumber");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
String type=request.getParameter("type");
int id=Integer.parseInt((String)session.getAttribute("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("update job_provider set company_Name=?,contact_number=?,street=?,city=?,state=?,type=? where id=?");
stmt.setString(1,companyName);
stmt.setString(2,contactNumber);
stmt.setString(3,street);
stmt.setString(4,city);
stmt.setString(5,state);
stmt.setString(6,type);
stmt.setInt(7,id);
stmt.executeUpdate();
%>
<b>Profile Updated Successfully</b><br>
<jsp:include page="companyHome.jsp"></jsp:include>