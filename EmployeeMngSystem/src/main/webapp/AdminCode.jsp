<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name=request.getParameter("uname"); 
String password=request.getParameter("psw");
if(name.equals("admin") && password.equals("admin")){
	response.sendRedirect("adminhome.jsp");
	
}
else{
	response.sendRedirect("wrong.jsp");
}

%>