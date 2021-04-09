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
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
		 String url="jdbc:mysql://localhost/java2";
		 String username="root";
		 String password="Aravind*123";
		 String[] courses_name=request.getParameterValues("course_names");
		 Connection conn=DriverManager.getConnection(url,username,password);
		 Statement stmt=conn.createStatement();
		 for(int i=0;i<courses_name.length;i++){
			 System.out.println(courses_name[i]);
		 String query="delete from courses where course_name='"+courses_name[i]+"'";
		 stmt.executeUpdate(query);
		 }
		 response.sendRedirect("success1.jsp");
		  
%>

</body>
</html>