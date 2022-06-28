<%@ page import="java.sql.*"%>
<table border="1">
	<% 
try 
{ 
String name=request.getParameter("uname"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ram","ram12"); 
PreparedStatement ps=con.prepareStatement("select * from userreg where name=?"); 
ps.setString(1,name); 

ResultSet rs=ps.executeQuery(); 
ResultSetMetaData rss=rs.getMetaData(); 

int n=rss.getColumnCount();  // n=7 

for(int i=1;i<=n;i++)   //rss.  

out.println("<td> <font color=blue size=3> "+"<br>"+rss.getColumnName(i)); 

out.println("<tr>"); 

while(rs.next()) 
{ 
for(int i=1;i<=n;i++) 

out.println("<td><br> "+rs.getString(i)); 
out.println("<tr>"); 
} 
out.println("</table>"); 

} 
catch(Exception ex) 
{ 
System.out.println(ex); 
} 
%>
	</body>