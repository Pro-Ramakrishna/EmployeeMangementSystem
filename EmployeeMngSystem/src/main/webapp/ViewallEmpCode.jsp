<%@ page import="java.sql.*"%>
<h1 style="color:orange">All Employee Details Are</h1>
<table border="1">
	<% 
try 
{ 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ram","ram12"); 
Statement stmt=con.createStatement(); 
ResultSet rs=stmt.executeQuery("select * from userreg");

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