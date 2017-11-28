<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
int jobProviderId=Integer.parseInt((String)session.getAttribute("id"));
int jobSeekerId=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("insert into job_seeker_notification values(?,?)");
stmt.setInt(1,jobSeekerId);
stmt.setInt(2,jobProviderId);
stmt.executeUpdate();
%>
<b>Successfully Applied</b><br>
<jsp:include page="companyHome.jsp"></jsp:include>