
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="updating_edit.jsp">
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/java2";
String username="root";
String password="Aravind*123";
Connection conn=DriverManager.getConnection(url,username,password);

PreparedStatement ps=conn.prepareStatement("update members set first_name=?,last_name=?,email=?,uname=?,pass=? where id=?");  
ps.setString(1,request.getParameter("first_name"));  
ps.setString(2,request.getParameter("last_name"));  
ps.setString(3,request.getParameter("email"));  
ps.setString(5,request.getParameter("uname"));  
ps.setString(4,request.getParameter("pass"));
ps.setString(6, request.getParameter("id"));
System.out.println(request.getParameter("id"));
ps.executeUpdate();  
response.sendRedirect("showusers.jsp");
}
catch(Exception e)
{
	System.out.print(e);
}
%>

</body>
</html>