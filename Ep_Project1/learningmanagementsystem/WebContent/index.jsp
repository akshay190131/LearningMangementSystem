<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        body{background: black}
        h1:hover
        {
        background: white;
        box-shadow: 2px 2px 30px yellow;
        }
       
        tr { height: 39px; }
        table, th, td {border: 1px solid black; width=100vw;height: 15vh}
        .styled-table tbody tr {border-bottom: 1px solid #dddddd;}
        .styled-table tbody tr:nth-of-type(even) {background-color: #f3f3f3;}
		.styled-table tbody tr:last-of-type {border-bottom: 2px solid #009879;	}
		.styled-table {border-collapse: collapse;margin: 25px 0;font-size: 0.9em;font-family: sans-serif;min-width: 400px;box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);}
        </style>
       
        </head><body>
    <center> <h1 style="color:red;font-size: 3rem">Learning Management System</h1></center>
    
        <form name="login" method="post" action="login.jsp" >
            <center>
            <table   cellpadding="5" class="styled-table" color="red"><thead><tr>
                        <td colspan="2" style="color: skyblue"><font size=5>Please Login Here</font><img align=left width=100 heigt=100></td>
                    </tr></thead><tbody><tr>
                        <td style="color:white;">User Name</td>
                        <td><input type="text" name="uname" required /></td>
                    </tr>
                    <tr>
                        <td >Password</td>
                        <td><input type="password" name="pass"  required /></td><br><br>
                        
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login"  /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="mdetails.jsp">Register Here</a></td>
                    </tr>
                    <tr>
                    <td ><a style="color: yellow" href="./AdminLoginIndex.jsp">Login as Admin</a></td> </tr></tbody></table></center></form>
                    </body>
                    </html>
