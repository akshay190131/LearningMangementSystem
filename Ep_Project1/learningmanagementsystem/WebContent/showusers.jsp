
<%@ page import ="java.sql.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student details </title>
</head>
<body>

<a href="success1.jsp">Go Back to Home page</a>
<form method="post">
<table border="2" style="border: collapse;width: 100vw">
<tr>
<td>First Name</td>
<td>Last Name</td>
<td>Email</td>
<td>UserName</td>
<td>Password</td>
<td>Edit User</td>
<td>Delete User</td>
</tr>

<%

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/java2";
String username="root";
String password="Aravind*123";
String query="select  * from members";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr>
<td><%=rs.getString("first_name") %></td>
<td><%=rs.getString("last_name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("uname") %></td>
<td><%=rs.getString("pass") %></td>
<td><a href="edit_stud.jsp?id=<%=rs.getInt("id")%>">Edit</a></td>
<td><a href="Delete_stud.jsp?id=<%=rs.getInt("id")%>">Delete</a></td>

<%System.out.print(rs.getInt("id")); %>
</tr>
<%
}
%>
</table>
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