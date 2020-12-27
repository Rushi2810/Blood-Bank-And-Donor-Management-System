<%-- 
    Document   : store
    Created on : Oct 11, 2020, 9:42:05 PM
    Author     : Rushikesh
--%>

<%@page import="oracle.net.aso.s"%>
<%@ page import="java.sql.*"
         import="oracle.jdbc.driver.OracleDriver"%>
		 <%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
                
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>                
<%
String ID=request.getParameter("rid");
String name=request.getParameter("rname");
String phonenumber=request.getParameter("rphonenumber");
String gender=request.getParameter("rgender");
String address=request.getParameter("raddress");
String bloodgroup=request.getParameter("rbloodgroup");

try{
	
	out.print("");
	Connection conn;
        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
        conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:userorcl","SYSTEM","SYSTEM");
	PreparedStatement ps = conn.prepareStatement("INSERT into registration VALUES(?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,phonenumber);
	ps.setString(3,gender);
	ps.setString(4,address);
        ps.setString(5,ID );
        ps.setString(6,bloodgroup);
	int x=ps.executeUpdate();
	if(x!=0){
                response.sendRedirect("store1.jsp");
	}else{
		out.print("Something went wrong...");
	}
	
	
}catch(Exception e){
	out.print(e);
}
%>