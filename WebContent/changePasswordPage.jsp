<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Change Password</title>
<script language='JavaScript'>
function validation(fff)
{
password=fff.password.value;
confirmPassword=fff.confirmPassword.value;

if(password.length==0)
{
	alert('Password Required');
	fff.password.focus();
return false;
}
if(confirmPassword.length==0)
{
	alert('Confirm Password Required');
	fff.confirmPassword.focus();
return false;
}

if(password!=confirmPassword)
{
alert('Password Not Confirmed Properly');
fff.password.value='';
fff.confirmPassword.value='';
fff.password.focus(); 
return false;
}
return true;
}
</script>
</head>
<body>
<form id="changePasswordPage" action='changePassword.jsp' onsubmit='return validation(this)' method="post" >
<table align="center">
<tr>
<td>Password</td>
<td><input type="password" name="password" id="password"></td></tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" name="cofirmPassword" id="confirmPassword"></td></tr>
<tr><td colspan="2" align="center"> <input type="submit" value="Change"/></td></tr>
</table>
</form>
</body>
</html>