<%@page import="java.sql.*"%>
<%
		String s1 = request.getParameter("firstname");
		String s2 = request.getParameter("lastname");
		String s3 = request.getParameter("star");
		String s4 = request.getParameter("subject");
		
     	        out.println("FIRST NAME: "+s1+"<br>");
		out.println("LAST NAME: "+s2+"<br>");
		out.println("STAR: "+s3+"<br>");
		out.println("SUBJECT: "+s4+"<br>");
		 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/edus","root","root");
PreparedStatement p = c.prepareStatement("insert into rat values(?,?,?,?)");
p.setString(1,s1);
p.setString(2,s2);
p.setString(3,s3);
p.setString(4,s4);

int r=p.executeUpdate();
if(r>0)
{
out.println("inserted");
}
}
catch(Exception e)
{
out.println(e);
}
%>