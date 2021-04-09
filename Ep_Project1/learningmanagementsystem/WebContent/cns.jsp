<!DOCTYPE html>
<html>
<head>
<style>
body
{
background-image: url("download.png");
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: red;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 1.5rem;
  font-family: cursive;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: #ffff66;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
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

.dropdown-content a:hover {background-color: lightblue;}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
<h1 style="text-align: center;font-size: 3rem;color:yellow;">Computer Networks and Security</h1>
<!--  
<ul>
  <li class="dropdown">
  <a href="javascript:void(0)" class="dropbtn">Course-Material</a>
   
  
    <a href="javascript:void(0)" class="dropbtn">Practical</a>
    <div class="dropdown-content">
      <a href="prac1.jsp">Practical-1</a>
      <a href="#">Practical-2</a>
      <a href="#">Practical-3</a>
      <a href="#">Practical-4</a>
    </div>
    
    <a href="javascript:void(0)" class="dropbtn">Skilling</a>
    
  </li>
</ul>
-->
<ul>
<li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Course-Material</a>
    <div class="dropdown-content">
     <a  href="#p1">CO-1</a>
     
     <a href="#p2">CO-2</a>
    <a href="#p3">CO-3</a>
    <a href="#p4">CO-4</a>
    
    </div>
    </li>

<li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Practical</a>
    <div class="dropdown-content">
     <a href="prac1.jsp">Practical-1</a>
     <a href="#p2">Practical-2</a>
    <a href="#p3">Practical-3</a>
    <a href="#p4">Practical-4</a>
    
    </div>
    </li>
    
    <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Skilling</a>
    <div class="dropdown-content">
     <a href="prac1.jsp">Skilling-1</a>
     <a href="#p2">Skilling-2</a>
    <a href="#p3">Skilling-3</a>
    <a href="#p4">Skilling-4</a>
    
    </div>
    </li>    
    
    
    <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Tutorial</a>
    <div class="dropdown-content">
     <a href="prac1.jsp">Tutorial-1</a>
     <a href="#p2">Tutorial-2</a>
    <a href="#p3">Tutorial-3</a>
    <a href="#p4">Tutorial-4</a>
    
    </div>
    </li>
    </ul>



</body>
</html>
