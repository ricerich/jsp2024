<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ page import="java.sql.*"%>                    --%>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
	<table width="300" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
			ResultSet rs = null;
			Statement stmt = null;

			try {
				
// 				String str1 = " select ";
// 				str1 = str1 + "			bookid, bookname, publisher, price "; 
// 				str1 = str1 + "	 from "; 
// 				str1 = str1 + "	        book "; 
// 				str1 = str1 + " where "; 
// 				str1 = str1 + "			bookid=1 ";
				
// 				StringBuffer sb1 = new StringBuffer();
// 				sb1.append(" select ");
// 				sb1.append("		bookname, publisher, price ");
// 				sb1.append(" from ");
// 				sb1.append("        book ");
// 				sb1.append(" where ");
// 				sb1.append("		bookid=1 ");
				
				String sql = "select * from member";
				
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
// 				rs = stmt.executeQuery(sb1.toString());

				while (rs.next()) {
					String id = rs.getString(1);
					String pw = rs.getString(2);
					String name = rs.getString(3);
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=name%></td>
		</tr>
		<%
				}
			} catch (SQLException ex) {
				out.println("Member 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage());
			} finally {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			}
		%>
	</table>
</body>
</html>
