<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <style>
        body {
background: #050c2b;
  }
  table{
  width: 50vw;height: 100vh;
  padding: 2rem 2rem 2rem 2rem;
  }
        tr { height: 39px; }
        .styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
    width:30%;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
    
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
table, th, td {
  border: 1px solid black;
}
        </style>
        <title>Registration</title>
         <script>
function validateForm() {
  var x = document.forms["register"]["uname"].value;
  if (x == "" || x.length<=6 ){
    alert("User Name Should be atleast 6 Characters:(");
    return false;
  }
  function verifyPassword() {
	  var pw = document.getElementById("pswd").value;
	  //check empty password field
	  if(pw == "") {
	     document.getElementById("message").innerHTML = "**Fill the password please!";
	     return false;
	  }
	 
	 //minimum password length validation
	  if(pw.length < 8) {
	     document.getElementById("message").innerHTML = "**Password length must be atleast 8 characters";
	     return false;
	  }

	//maximum length of password validation
	  if(pw.length > 15) {
	     document.getElementById("message").innerHTML = "**Password length must not exceed 15 characters";
	     return false;
	  } else {
	     alert("Password is correct");
	  }
	}
  
}
</script>
    </head>
    <body>
    <center></center>
        <form style="" name="register" method="post" action="registration.jsp" onsubmit ="return verifyPassword()" onsubmit="return validateForm()">
            <center>
            <table width="30%" border="1" width="30%" class="styled-table" cellpadding="5" color="black">
                <thead>
                    <tr>
                        <th colspan="2" style="color:orange;font-size: 1.5rem" >Register Here!!</font></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="color:yellow;">First Name</td>
                        <td><input type="text" name="fname" required /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" required/></td>
                    </tr>
                    <tr>
                        <td style="color:yellow;">Email</td>
                        <td><input type="email" name="email" required /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" required /></td>
                    </tr>
                    <tr>
                        <td style="color:yellow;">Password</td>
                        <td><input type="password" name="pass" id = "pswd" required  /></td>
                        <span id = "message" style="color:red"> </span> <br><br><br>
                    </tr>
                    <tr>
                        <td><button type="submit" value="Submit" >Submit</button></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="color:yellow;">Already registered!! <a style="color: red" href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
           </table>
          </center>
        </form>
    </body>
</html>
