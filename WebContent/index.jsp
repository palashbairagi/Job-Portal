<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Naukri</title>
<script language='JavaScript'>
function validation(fff)
{
password=fff.password.value;
userName=fff.userName.value;

if(userName.length==0)
{
	alert('EMail-Id Required');
	fff.userName.focus();
return false;
}
if(password.length==0)
{
	alert('Password Required');
	fff.password.focus();
return false;
}

return true;
}
</script>
</head>
<body>
<center>
<form action="login.jsp" method="post" onsubmit='return validation(this)' name='loginForm' id='loginForm'>
<table>
	<tr>
		<td>E-Mail Id</td>
		<td><input type="text" name="userName" id="userName" /></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password" id="password" /></td>
	</tr>
	<tr>	
		<td colspan=2 align="center"><input type="submit" value="Login" /></td>
	</tr>
	<tr></tr>
	<tr>
		<td colspan=2 align="center">Not a Member? &nbsp;&nbsp;&nbsp;&nbsp;<a href='studentRegistrationPage.jsp'>Register Here</a></td>
	</tr>
</table>
</form>
</center>
</body>
</html>