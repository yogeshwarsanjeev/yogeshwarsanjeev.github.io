<%-- 
    Document   : staff
    Created on : Dec 26, 2018, 11:22:57 AM
    Author     : Yogeshwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%try
{
Class.forName("com.mysql.jdbc.Driver");
Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/edus","root","root");
PreparedStatement ps = c.prepareStatement("select firstname from edus");
ResultSet r=ps.executeQuery();
while(r.next())
{%>
<a href="details.jsp?firstname=<%=r.getString("firstname")%>"><%=r.getString("firstname")%></a><br>
   
<%}
}
catch(Exception e)
        {
        out.print(e);
        }%>