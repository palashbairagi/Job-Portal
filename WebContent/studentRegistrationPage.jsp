<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<script language='JavaScript'>
function validation(fff)
{
firstName=fff.firstName.value;
lastName=fff.lastName.value;
emailId=fff.emailId.value;
password=fff.password.value;
confirmPassword=fff.confirmPassword.value;
contactNumber=fff.contactNumber.value;
street=fff.street.value;
city=fff.city.value;
state=fff.state.value;
hsc=fff.hsc.value;
hs=fff.hs.value;
graduationName=fff.graduationName.value;
branch=fff.branch.value;
degree=fff.degree.value;
skills=fff.skills.value;
jobType=fff.jobType.value;

if(firstName.length==0)
{
alert('First Name Required');
fff.firstName.focus();
return false;
}
if(lastName.length==0)
	{
	alert('Last Name Required');
	fff.lastName.focus();
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
if(hsc.length==0)
{
	alert('10th % Required');
	fff.hsc.focus();
return false;
}
if(hs.length==0)
{
	alert('12th % Required');
	fff.hs.focus();
return false;
}
if(graduationName.length==0)
{
	alert('Graduation Name Required');
	fff.graduationName.focus();
return false;
}
if(branch.length==0)
{
	alert('Branch Required');
	fff.branch.focus();
return false;
}
if(degree.length==0)
{
	alert('Degree Percentage Required');
	fff.degree.focus();
return false;
}
if(skills.length==0)
{
	alert('Skills Required');
	fff.skills.focus();
return false;
}
if(jobType.length==0)
{
	alert('Job Type Required');
	fff.jobType.focus();
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
	
a='1234567890.%';
b=0;
while(b<hsc.length)
	{
	if(a.indexOf(hsc.charAt(b))==-1)
		{
		alert('Invalid 10th %');
		fff.hsc.focus();
		return false;
		}
	b++;
	}
	
b=0;
while(b<hs.length)
	{
	if(a.indexOf(hs.charAt(b))==-1)
		{
		alert('Invalid 12th %');
		fff.hs.focus();
		return false;
		}
	b++;
	}

b=0;
while(b<degree.length)
	{
	if(a.indexOf(degree.charAt(b))==-1)
		{
		alert('Invalid Graduation Percenetage');
		fff.degree.focus();
		return false;
		}
	b++;
	}
return true;
}
</script>
</head>
<body>
<h1><marquee><center>Welcome To The Student Registration</center></marquee></h1>
<a href="companyRegistrationPage.jsp">Company Registration</a>
<form action="studentRegistration.jsp" onsubmit='return validation(this)' name="studentRegistrationForm" id="studentRegstrationForm">
<center>
<table>
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" id="firstName"></td></tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" id="lastName"></td></tr>
<tr>
<td>Email Id</td>
<td><input type="text" name="emailId" id="emailId"></td></tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" id="password"></td></tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" name="confirmPassword" id="confirmPassword"></td></tr>
<tr>
<td>Gender</td>
<td><input type="radio" name="gender" id="gender" value="M" checked>Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="gender" id="gender" value="F">Female</td></tr>
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
<td>10th %</td>
<td><input type="text" name="hsc" id="hsc"></td></tr>
<tr>
<td>12th %</td>
<td><input type="text" name="hs" id="hs"></td></tr>
<tr>
<td>Degree Name</td>
<td><input type="text" name="graduationName" id="graduationName"></td></tr>
<tr>
<td>Branch</td>
<td><input type="text" name="branch" id="branch"></td></tr>
<tr>
<td>Percentage</td>
<td><input type="text" name="degree" id="degree"></td></tr>
<tr>
<td>Skills</td>
<td><input type="text" name="skills" id="skills"></td></tr>

<tr>
<td>Job Type</td>
<td><input type="text" name="jobType" id="jobType"></td></tr>
<tr><td><input type="submit" name=save value="Save"></td>
<td><input type="reset" name=cancel value="Cancel"></td>
</tr>
</table>
</center>
</form>
</body>
</html>