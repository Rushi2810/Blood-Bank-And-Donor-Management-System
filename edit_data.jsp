<%-- 
    Document   : Data retrieval
    Created on : Oct 13, 2020, 4:26:45 PM
    Author     : Rushikesh
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"
         import="oracle.jdbc.driver.OracleDriver"%>
		 <%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>Edit Database</title>
    </head>
    <body>  
        <h1><marquee>Welcome to Database</marquee></h1>
                <tr>
                    <a href='index.html'class='btn btn-success'>Back</a>
                </tr>
        <%
         try{
             Connection conn;
             DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
             conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:userorcl","SYSTEM","SYSTEM");
	     Statement st= conn.createStatement();   
             ResultSet rs= st.executeQuery("select*from registration");
             while(rs.next())
             {
             %>
            <table align="center" border="1" width="100" style="width:100%" class="table table-dark">
            <body style="background-color:darksalmon">
            <tbody align="center" style="font-size: 20px">
                <tr>
                <th width="16.67%">ID</th>   
                <th width="16.67%">Name</th>
                <th width="16.67%">Blood Group</th>
                <th width="16.67%">Phone Number</th>
                <th width="16.67%">Gender</th>
                <th width="16.67%">Address</th>
                </tr>
                <tr>
                <td width="16.67%"><%=rs.getString(5) %></td>     
                <td width="16.67%"><%=rs.getString(1) %></td>
                <td width="16.67%"><%=rs.getString(6) %></td>
                <td width="16.67%"><%=rs.getString(2) %></td>
                <td width="16.67%"><%=rs.getString(3) %></td>
                <td width="16.67%"><%=rs.getString(4) %></td>
                <td><a href='edit1.jsp?rid=<%=rs.getString("id")%>' class='btn btn-danger'>Edit </a></td>
                <td><a href='delete.jsp?rid=<%=rs.getString("id")%>' class='btn btn-danger'>Delete </a></td>
              
                </tbody>
            </body>
            </table>
        
      
             <%
             }
         }catch(Exception e){
             out.print(e);
         }   
            %>
                
    </body>
</html>
