<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String name=request.getParameter("uname"); 
String password=request.getParameter("psw"); 
String email=request.getParameter("mail"); 
String mobilenumber=request.getParameter("mnum"); 
String gender=request.getParameter("gen"); 
String address=request.getParameter("addr"); 
String country=request.getParameter("con"); 
try{ 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ram","ram12"); 
PreparedStatement ps=con.prepareStatement("insert into userreg values(?,?,?,?,?,?,?)"); 
ps.setString(1,name); 
ps.setString(2,password); 
ps.setString(3,email); 
ps.setString(4,mobilenumber); 
ps.setString(5,gender); 
ps.setString(6,address); 
ps.setString(7,country); 
int i=ps.executeUpdate(); 
out.print(i+"One Record has been inserted "); 
con.close(); 
} 
catch(Exception ex){ 
out.print(ex); 
} 

%>
</body>
</html>

