<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <head>
        <style>

        body {
 
  background-color: #1c0202;
  
  }
        tr { height: 59px; }
        table, th, td {
      width:50vw;
      height: 15vh;
      
}
        .styled-table tbody tr {
    border-bottom: 1px solid white;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: lightgrey;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid orange;
}
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
        </style>
    </head>
    <body>
    <center> <h1 style=color:white>Learning Management System</h1></center>
        <form method="post" action="AdminLogin.jsp">
            <center>
            <table  border="1" width="30%" cellpadding="5" class="styled-table" bgcolor=orange color=white >
                <thead>
                    <tr>
                        <td colspan="2"><font size=5>Login as Admin</font><img  align=left width=100 heigt=100></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname1" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass1" required /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                    <td ><a href="index.jsp">Login as User</a></td>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
    

