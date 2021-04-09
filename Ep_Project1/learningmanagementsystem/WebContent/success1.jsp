<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import ="java.sql.*" %>
    
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>


<%} else {
%>

<%
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <style type="text/css">
        body
        {
        	
        	background-image: url("origin.png");
        	 background-size:cover;
        	 background-repeat: no-repeat;
        }
       
        </style>
<!--

Template 2093 Flight

http://www.tooplate.com/view/2093-flight

-->
    	<title>Learn Today</title>
    
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

</head>
<body>



        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/tooplate-style.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

<body>





<!--  
<div> 

<ul>
  
  <li><a href="#news">Grades</a></li>&nbsp;&nbsp;
  <li><a href="radioForm.jsp">Feedback</a></li>&nbsp;&nbsp;
  <li><a href="https://simple-chat-io.herokuapp.com/">Chat</a></li>&nbsp;&nbsp;
  <button onclick="myFunction1()" class="dropbtn">MyCourses</button>&nbsp;&nbsp;
  <div id="a" class="dropdown-content">&nbsp;&nbsp;
    <a href="#DS">Data Science</a>
    <a href="#EP">Enterprise Programming</a>
    <a href="#CNS">Computer Networks and Security</a>
    <a href="#MP">Mathematics for Programming</a>
    <a href="logout.jsp">Aptitude Builder</a>	

</ul>
</div>

<script>

function myFunction1() {
  document.getElementById("a").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
 


  <button onclick="myFunction()" class="dropbtn">Profile</button>&nbsp;&nbsp;
  <div id="myDropdown" class="dropdown-content">&nbsp;&nbsp;
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#password">Change Password</a>
    <a href="#Edit">Edit Profile</a>
    <a href="logout.jsp">Logout</a>	
    
  </div>

</ul>
</div>
<script>


function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
 
</div>
-->
<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #010330;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: blue;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color:black;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: red;}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>


<ul>
 <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">MyCourses</a>&nbsp;&nbsp;
    <div class="dropdown-content">
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
<a href="ds.jsp"><%=rs.getString("course_name") %></a>




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
    </div>
    </li>
   <li class="dropdown">&nbsp;&nbsp;
    <a href="javascript:void(0)" class="dropbtn">Grades</a>
    <div class="dropdown-content">
    
    <a href="sem1.jsp">First Semester</a>
    <a href="#2">Second Semester</a>
    
    <a href="#3">Third Semester</a>
    <a href="#4">Fourth Semester</a>
    
    </div>
    </li>
  <li><a href="radioForm.jsp">FeedBack</a></li>&nbsp;&nbsp;
  <li><a href="https://simple-chat-io.herokuapp.com">Chat</a></li>&nbsp;&nbsp;
  <li><a href="Course_add.jsp">Add Courses</a></li>&nbsp;&nbsp;
 <li><a href="Course_del.jsp">Delete Courses</a></li>&nbsp;&nbsp;
  
 <li class="dropdown">&nbsp;&nbsp;
    <a href="javascript:void(0)" class="dropbtn">Profile</a>
    <div class="dropdown-content">
    
    <a href="about-us.jsp">About</a>
    <a href="changePassword.jsp">Change Password</a>
    
    <a href="FAQ.jsp">FAQ</a>
    <a href="logout.jsp">Logout</a>
    
    </div>
    </li>
    
<li class="dropdown">&nbsp;&nbsp;
    <a href="javascript:void(0)" class="dropbtn">Users</a>
    <div class="dropdown-content">
    
    <a href="showusers.jsp">Show Users</a>
    
    
  
    
    </div>
    </li>
  
</ul>

                        
</body>
</html>