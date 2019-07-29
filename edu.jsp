<%@page import="java.sql.*"%>
<%
		String s1 = request.getParameter("firstname");
		String s2 = request.getParameter("lastname");
		String gen = request.getParameter("gender");
		String s3 = request.getParameter("dob");
		String dept = request.getParameter("department");
  	   	
		String s4 = request.getParameter("qualification");
                String s5=request.getParameter("occupation");
		String s6 = request.getParameter("workingas");
		String s7 = request.getParameter("experience");
		String s8 = request.getParameter("address");
		String s9 = request.getParameter("email");
		String s10 = request.getParameter("contact");
                
     	        out.println("FIRST NAME: "+s1+"<br>");
		out.println("LAST NAME: "+s2+"<br>");
		out.println("GENDER: "+gen+"<br>");
		out.println("DOB: "+s3+"<br>");
		out.println("DEPARTMENT:"+dept+"<br>");
                out.println("QUALIFICATION:"+s4+"<br>");
		out.println("OCCUPATION:"+s5+"<br>");
               
                out.println("WORKING AS:"+s6+"<br>");
                out.println("YEARS OS EXPERIENCE:"+s7+"<br>");         
                out.println("ADDRESS:"+s8+"<br>");
                out.println("EMAIL:"+s9+"<br>");
                out.println("CONTACT:"+s10+"<br>");  
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/edus","root","root");
PreparedStatement ps = c.prepareStatement("insert into edus values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,gen);
ps.setString(4,s3);
ps.setString(5,dept);

ps.setString(6,s4);
ps.setString(7,s5);
ps.setString(8,s6);
ps.setString(9,s7);
ps.setString(10,s8);
ps.setString(11,s9);
ps.setString(12,s10);

int r=ps.executeUpdate();
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