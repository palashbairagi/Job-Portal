<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String gender=request.getParameter("gender");
String contactNumber=request.getParameter("contactNumber");
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
int id=Integer.parseInt((String)session.getAttribute("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("update job_seeker set first_Name=?,last_Name=?,contact_number=?,gender=?,street=?,city=?,state=?,hsc=?,hs=?,degree_Name=?,branch=?,degree=?,skills=?,job_Type=? where id=?");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,contactNumber);
stmt.setString(4,gender);
stmt.setString(5,street);
stmt.setString(6,city);
stmt.setString(7,state);
stmt.setString(8,hsc);
stmt.setString(9,hs);
stmt.setString(10,graduationName);
stmt.setString(11,branch);
stmt.setString(12,degree);
stmt.setString(13,skills);
stmt.setString(14,jobType);
stmt.setInt(15,id);
stmt.executeUpdate();
%>
<b>Profile Updated Successfully</b><br>
<jsp:include page="studentHome.jsp"></jsp:include>
