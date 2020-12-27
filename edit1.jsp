<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"
         import="oracle.jdbc.driver.OracleDriver"%>
		 <%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
<html>
    <head>
        <style type="text/css">
          body{
          background-image: url("https://www.hunterdonhealthcare.org/wp-content/uploads/2019/03/Blood-Donation-red-background-web.jpg");
          background-repeat: no-repeat;
          background-attachment: fixed;  
          background-size: cover;
          position: relative;
          bottom:60px;
          }
          form{
              background-color: darksalmon;
              border: 2px solid black;
              width: 45%;
              padding-top: 10px;
              padding-bottom: 10px;
              margin: 100px auto;
          }
          th{
              font-size: 30px;
              color: black;
              font-family:Georgia;
              
           
          }
          td{  
              font-size: 20px;
              font-family: Georgia;
              padding: 17px;
              color: black;
          }
         
           input[type=submit]{
                background-color: #4CAF50;
                font-family: Georgia;
                border: none;
                color: white;
                margin: 4px 2px;
                padding: 8px 16px;
           }
           input[type=button]:hover{
              
           }
         
           input[type=reset]{
               background-color: grey;
               font-family: Georgia;
               border: none;
               color: white;
               margin: 4px 2px;
               padding: 8px 16px;
           }
           input[type=text]{
              padding: 2px;
           }
           table{
               padding-top:20px;
           }
           a{
              font-family: Georgia;
              font-size: 17px;
           }
          
           
           
        </style>
      
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        
    </head>
    <body>
       
        <form action="update.jsp" method="post">
            <table align="center">
                
                <tr id="example">
                    <th colspan="2" style="padding: 20px">Update Page</th>
                </tr>
                <tr>
                    <td>ID</td><td><input type="text" name="rid" requireds></td>
                </tr>
                <tr>
                    <td>Name</td><td><input type="text" name="rname" required></td>
                </tr>
                <tr>
                    <td>Blood group</td><td><select name="rbloodgroup" required>
                 <option value="O+">O+</option>
                 <option value="O-">O-</option>
                 <option value="A+">A+</option>
                 <option value="A-">A-</option>
                 <option value="B+">B+</option>
                 <option value="B-">B-</option>
                 <option value="AB+">AB+</option>
                 <option value="AB-">AB-</option>
                 </select></td>
                </tr>
                <tr>
                    <td>Phone Number</td><td><input type="tel" name="rphonenumber" required></td>
                </tr>
                <tr>
                    <td>Gender</td><td>Male<input type="radio" name="rgender" value="Male">Female<input type="radio" name="rgender" value="Female"></td>
                </tr>
                <tr>
                    <td>Address<td><input type="text" name="raddress" required></td>
                </tr>
               
                <tr>
                    <td></td><td style="padding: 20px"><input type="reset" value="Reset"><input type="submit" value="Update"><br></td>
                    <td><button><a href='edit_data.jsp' class='btn btn-danger'>Back</a></button></td>
                </tr>
            </table>
        </form> 
    </body>
</html>
