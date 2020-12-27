<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"
         import="oracle.jdbc.driver.OracleDriver"%>
		 <%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
<%
String ID=request.getParameter("rid");
String name=request.getParameter("rname");
String phonenumber=request.getParameter("rphonenumber");
String gender=request.getParameter("rgender");
String address=request.getParameter("raddress");
String bloodgroup=request.getParameter("rbloodgroup");

try{
	
	Connection conn;
        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
        conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:userorcl","SYSTEM","SYSTEM");
        PreparedStatement ps=conn.prepareStatement("update registration set id='"+ID+"',bloodgroup='"+bloodgroup+"',name='"+name+"', phone_number='"+phonenumber+"', gender='"+gender+"', address='"+address+"' where id='"+ID+"'");
       
        int x=ps.executeUpdate();
	if(x!=0){
		response.sendRedirect("update1.jsp");
	}else{
		out.print("Something went wrong...");
	}
}
catch(Exception e){
	out.print(e);
} %>