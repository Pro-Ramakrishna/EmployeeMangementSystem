<body bgcolor="Wheat"> 
<center> 
<h1 style="color:red">EMPLOYEE MANAGEMENT SYSTEM</h1> 
<a href="home.jsp">Home</a>&emsp;&emsp; 
<a href="about.jsp">About</a>&emsp;&emsp; 
<a href="contact.jsp">Contact</a>&emsp;&emsp; 
<a href="reg.jsp">Register</a>&emsp;&emsp; 
<a href="Login.jsp">Login</a><p></p> 
<h1 style="color:grey">Update Employee Details</h1> 
 
<table> 
 
<form action="UpdateCode.jsp" method="post"> 
<tr> 
<td>Name:</td> 
<td><input type="text" name="uname"></td> 
</tr> 
 
<tr> 
<td>Password:</td> 
<td><input type="password" name="psw"></td> 
</tr> 
 
<tr> 
<td>Email:</td> 
<td><input type="email" name="mail"></td> 
</tr> 
<tr> 
<td>Mobile Number:</td> 
<td><input type="text" name="mnum"></td> 
</tr> 
 

 
<tr> 
<td>Address:</td> 
<td><textarea name="addr" col=10 row=10></textarea> 
</td> 
</tr> 
<td><input type="submit" value="UpdateRecord"></td>

<td> <input type="reset" value="Reset"></td>
</td> 
</tr> 
</form> 
</table> 
</center> 
</body>