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
 try{  
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 String url="jdbc:mysql://localhost/java2";
		 String username="root";
		 String password="Aravind*123";
		 String query="insert into courses(course_name) values('"+request.getParameter("coursename")+"')";
		 Connection conn=DriverManager.getConnection(url,username,password);
		 Statement stmt=conn.createStatement();
		  int stat=stmt.executeUpdate(query);
		     request.setAttribute("s1", stat);

		  if(stat>0){
			  out.print("Subject added Successfully");
		 response.sendRedirect("Course_add.jsp");}
		  else{
			  
			  out.print("Failed");
		  }
	        
	    }catch(Exception e){System.out.println(e);}  %>

</body>
</html>