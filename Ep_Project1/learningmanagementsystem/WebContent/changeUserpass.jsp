<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/java2";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "Aravind*123");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from members where pass='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(6);
} System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update members set pass='"+Newpass+"' where id='"+id+"'");
out.print("<p>Password Changed Successfully !!</p>");
out.print("<jsp:include page ='userform.html'></jsp:include>");
st1.close();
con.close();
}



else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>