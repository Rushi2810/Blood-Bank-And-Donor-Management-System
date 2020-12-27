<%-- 
    Document   : delete_process
    Created on : Oct 13, 2020, 5:31:29 PM
    Author     : Rushikesh
--%>

<%@page import="oracle.net.aso.a"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style>
            body{
          background-image: url("https://www.hunterdonhealthcare.org/wp-content/uploads/2019/03/Blood-Donation-red-background-web.jpg");
          background-repeat: no-repeat;
          background-attachment: fixed;  
          background-size: cover;
          position: relative;
          bottom:60px;
          }
          form{
              width: 45%;
              padding-top: 50px;    
              margin: 10px 325px;
              font-size: 30px;
              color: white;
              font-family:Georgia;
              padding: 150px;
          }
          input[type=submit]{
                background-color: #4CAF50;
                font-family: Georgia;
                border: none;
                color: white;
                margin: 10px 125px;
                padding: 10px 20px;
                border-radius: 8px;
          }
         
        </style>
    </head>
    <body>
        <form action="edit_data.jsp" >
        <%
            out.print("Data deleted sucessfully");     
        %> 
        <br><br>
        <tr>
        <input type="submit" value="Ok">
        </tr>
        </form>
    </body>
</html>
