<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("uname");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ram","ram12");
	PreparedStatement ps=con.prepareStatement("delete from userreg where name=?");
	ps.setString(1, name);
	int i=ps.executeUpdate();
	out.print(i+"one Record has been Deleted......");

	
		con.close();
	}
	

 catch(Exception ex)
 {
 out.print(ex);
 }
 %>