<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String userName=request.getParameter("userName");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
PreparedStatement stmt=con.prepareStatement("select * from login_info where Email_id=? and Password=?");
stmt.setString(1,userName);
stmt.setString(2,password);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	String id=r.getString("id");
	String accountType=r.getString("account_Type");
	session.setAttribute("userName",userName);
	session.setAttribute("id",id);
	session.setAttribute("accountType",accountType);
	
	if(accountType.equals("s")){%><jsp:forward page="studentHome.jsp" />
<% }else{%><jsp:forward page="companyHome.jsp" />
<%}
}
else {
	%>
	<%="Invalid login,try again" %>
	<jsp:include page="index.jsp" />
	<%
}
%>
