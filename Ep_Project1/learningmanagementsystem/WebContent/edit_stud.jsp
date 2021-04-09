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
String query="select  * from members where id="+request.getParameter("id");
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{%>
<tr>
<label>First Name</label>
<input type="text" value="<%=rs.getString("first_name") %>" name="first_name" ><br>
<label>Last Name</label>

<input type="text" value="<%=rs.getString("last_name") %>" name="last_name" ><br>

<label>Mail</label>

<input type="text" value="<%=rs.getString("email") %>" name="email" ><br>
<label>User Name</label>

<input type="text" value="<%=rs.getString("uname") %>" name="uname" ><br>
<label>Password</label>
<input type="hidden" name="id" value="<%=rs.getString("id") %>">

<input type="text" value="<%=rs.getString("pass") %>" name="pass" ><br>
<input type="submit" value="submit">
<%
}
%>
<%
rs.close();
stmt.close();
conn.close();
    }

catch(Exception e)
    {
e.printStackTrace();
    }

%>




</form>


</body>
</html>