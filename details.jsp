<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
		String s1 = request.getParameter("firstname");
                out.println("FIRST NAME: "+s1+"<br>");
                
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/edus","root","root");
PreparedStatement p = c.prepareStatement("select * from edus where firstname=?");
p.setString(1,s1);

ResultSet r=p.executeQuery();
while(r.next())
{
out.print(r.getString(1)+" "+r.getString(2)+" "+r.getString(3)+" "+r.getString(4)+" "+r.getString(5)+" "+r.getString(6)+" "+r.getString(7)+" "+r.getString(8)+" "+r.getString(9)+" "+r.getString(10)+" "+r.getString(11)+" "+r.getString(12));
}
}
catch(Exception e)
        {
       out.print(e);
        }
%>