<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% 
int jobSeekerId=Integer.parseInt((String)session.getAttribute("id"));
int jobProviderId=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("insert into job_provider_notification values(?,?)");
stmt.setInt(1,jobProviderId);
stmt.setInt(2,jobSeekerId);
stmt.executeUpdate();
%>
<b>Successfully Applied</b><br>
<jsp:include page="studentHome.jsp"></jsp:include>