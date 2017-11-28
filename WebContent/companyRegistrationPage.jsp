<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language='JavaScript'>
function validation(fff)
{
companyName=fff.companyName.value;
emailId=fff.emailId.value;
password=fff.password.value;
confirmPassword=fff.confirmPassword.value;
contactNumber=fff.contactNumber.value;
street=fff.street.value;
city=fff.city.value;
state=fff.state.value;
type=fff.type.value;

if(companyName.length==0)
{
alert('Company Name Required');
fff.companyName.focus();
return false;
}
if(emailId.length==0)
{
	alert('EMail-Id Required');
	fff.emailId.focus();
return false;
}
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
if(contactNumber.length==0)
{
	alert('Contact Number Required');
	fff.contactNumber.focus();
return false;
}
if(street.length==0)
{
	alert('Street Required');
	fff.street.focus();
return false;
}
if(city.length==0)
{
	alert('City Required');
	fff.city.focus();
return false;
}
if(state.length==0)
{
	alert('State Required');
	fff.state.focus();
return false;
}
if(type.length==0)
{
	alert('Type Required');
	fff.type.focus();
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

v='1234567890';
e=0;
while(e<contactNumber.length)
	{
	if(v.indexOf(contactNumber.charAt(e))==-1)
		{
		alert('Invalid Contact Number');
		fff.contactNumber.focus();
		return false;
		}
	e++;
	}
return true;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<h1><marquee><center>Welcome To The Company Registration</center></marquee></h1>
<form action="companyRegistration.jsp" onsubmit='return validation(this)' name="companyRegistrationForm" id="companyRegistrationForm">
<center>
<table>
<tr>
<td>Company Name</td>
<td><input type="text" name="companyName" id="companyName"></td></tr>
<tr>
<td>Email Id</td>
<td><input type="text" name="emailId" id="emailId"></td></tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" id="password"></td></tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" name="cofirmPassword" id="confirmPassword"></td></tr>
<tr>
<td>Contact Number</td><td><input type='text' name='contactNumber' id='contactNumber'></td>
</tr>
<tr>
<td>Street</td>
<td><input type="text" name="street" id="street"></td></tr>
<tr>
<td>City</td>
<td><input type="text" name="city" id="city"></td></tr>
<tr>
<td>State</td>
<td><input type="text" name="state" id="state"></td></tr>
<tr>
<tr>
<td>Type</td>
<td><input type="text" name="type" id="type"></td></tr>
<tr><td><input type="submit" name=save value="Save"></td>
<td><input type="reset" name=cancel value="Cancel"></td>
</tr>
</table>
</center>
</form>
</body>
</html>