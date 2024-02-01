<%@ page import="java.sql.*"%> 
<%
	Connection conn = null;

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "c##madang";
	String password = "c##madang";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, user, password);
%>