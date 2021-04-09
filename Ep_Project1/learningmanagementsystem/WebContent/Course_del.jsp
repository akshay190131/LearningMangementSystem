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
<form action="delete_course.jsp">
<% 
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/java2";
String username="root";
String password="Aravind*123";
String query="select distinct(course_name)  from courses";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>



<input type="checkbox" name="course_names" value="<%=rs.getString("course_name") %>"/>
<label><%=rs.getString("course_name") %></label><br>






<%

}


rs.close();
stmt.close();
conn.close();
    }

catch(Exception e)
    {
e.printStackTrace();
    }

%>
<input type="submit"value="Delete">  
<a href="success1.jsp">Go Back to Home page</a>
</form>
</body>
</html>