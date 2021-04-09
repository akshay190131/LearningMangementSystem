<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: black;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: red;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="#home">Practical-1</a></li>
  <li><a href="#news">Practical-2</a></li>
  <li><a href="#contact">Practical-3</a></li>
  <li><a href="#about">Practical-4</a></li>
</ul>

</body>
</html>
