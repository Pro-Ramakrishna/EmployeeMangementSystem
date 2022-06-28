<%@ page import="java.sql.*"%>
<%
String name=request.getParameter("uname");
String password=request.getParameter("psw");
String email=request.getParameter("mail");
String mobilenumber=request.getParameter("mnum");
String address=request.getParameter("addr");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ram","ram12");
	PreparedStatement ps=con.prepareStatement("update  userreg set password=?,  email=?,mobilenumber=?,address=? where name=?");
	ps.setString(1, password);
	ps.setString(2,email);
	ps.setString(3, mobilenumber);
	ps.setString(4,address);
	ps.setString(5,name);
	int i=ps.executeUpdate();
	out.print(i+"one Record is Updated");
	con.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>

