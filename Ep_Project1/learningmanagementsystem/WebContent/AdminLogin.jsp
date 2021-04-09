<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>

<%
	
    String u=request.getParameter("uname1");/*  = request.getParameter("uname1");     */
    String p=request.getParameter("pass1"); /* = ; */
    /* Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java2","root","Aravind*123");
    Statement st = con.createStatement();
    ResultSet rs;
    syso
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'"); */
    System.out.println("######### "+u+p);
    if (u.equals("Akshay") && p.equals("1234")) {
        session.setAttribute("userid", u);
        out.println("welcome " + u);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success1.jsp");
    } else {
        out.println("Invalid password <a href='AdminLoginIndex.jsp'>try again</a>");
    }
%>