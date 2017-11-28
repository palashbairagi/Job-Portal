<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Search</title>
</head>
<body>
<form action="studentSearchBySkills.jsp">
<center>
<table>
<tr><td>Skills<input type="text" name="skills" id="skills"></td><td><input type="submit" value="Find"></td></tr>
</table>
</center>
</form>

<form action="studentSearchByGraduation.jsp">
<center>
<table>
<tr><td>Graduation<input type="text" name="graduation" id="graduation"></td><td><input type="submit" value="Find"></td></tr>
</table>
</center>
</form>
<form action="studentSearchByLocation.jsp">
<center>
<table>
<tr><td>Location<input type="text" name="location" id="location"></td><td><input type="submit" value="Find"></td></tr>
</table>
</center>
</form>
</body>
</html>