<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");

		Statement stmt = null;

		try {
			
// 			String sql = "INSERT INTO Member(id, passwd, name) VALUES('" + id + "','" + passwd + "', '" + name + "')";

			String sql = "";
			sql += " ";
			sql += " INSERT INTO "; 
			sql += "             Member(id, passwd, name) "; 
			sql += " VALUES ";
			sql += "             ('"+id+"','"+passwd+"','"+name+"') ";		
			
			StringBuffer sql2 = new StringBuffer();
			sql2.append(" INSERT INTO ");
			sql2.append("             Member(id, passwd, name) ");
			sql2.append(" VALUES ");
			sql2.append("             ('"+id+"','"+passwd+"','"+name+"') ");
			
			System.out.println(sql2.toString());
			
			stmt = conn.createStatement();
			
// 			int result = stmt.executeUpdate(sql);
			int result = stmt.executeUpdate(sql2.toString());
			
			if(result == 1)//1개 입력 성공
				System.out.println("데이터 입력성공~~!!");
			else if(result == 0)
				System.out.println("데이터 입력실패~~!!");
					
			
			out.println("Member 테이블 삽입이 성공했습니다.");
		} catch (SQLException ex) {
			out.println("Member 테이블 삽입이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	%>
</body>
</html>
	