<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title> 
</head>
<body bgcolor="pink">
<center>
<h1 style="color:red">EMPLOYEE MANAGEMENT SYSTEM</h1>
<a href="home.jsp">Home</a> &emsp;&emsp;
<a href="about.jsp">About</a> &emsp;&emsp;
<a href="contact.jsp">Contact</a> &emsp;&emsp;
<a href="register.jsp">Register</a> &emsp;&emsp;
<a href="Login.jsp">Login</a> &emsp;&emsp;
<h1 style="color:green">Delete Employe Page</h1>
<table>
<form action="DeleteEmpCode.jsp" method="post">

<tr>
<td>Password:</td>
<td><input type="password" name="psw">
</tr>
<tr>
<td></td>
<td><input type="Submit" value="DeleteEmp">

</tr>
</form>
</table>
</center>
</body>
</html>