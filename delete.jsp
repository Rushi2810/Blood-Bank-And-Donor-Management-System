<%-- 
    Document   : delete
    Created on : Oct 13, 2020, 5:20:56 PM
    Author     : Rushikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"
         import="oracle.jdbc.driver.OracleDriver"%>
		 <%@page import="java.sql.ResultSet"%>
		 <%@page import="java.sql.Statement"%>
		 <%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String ID=request.getParameter("rid");
             Connection conn;
             DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
             conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:userorcl","SYSTEM","SYSTEM");
	     Statement st= conn.createStatement();   
             st.executeQuery("DELETE from registration where id='"+ID+"'");
             response.sendRedirect("delete_process.jsp");
        %>
    </body>
</html>
