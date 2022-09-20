<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>                   
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>비밀번호</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		<%
		ResultSet rs = null;
		Statement stmt = null;

		try 
		{
			String sql = "SELECT *FROM Student";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) 
			{
				String NUM = rs.getString("NUM");
				String PWD = rs.getString("PWD");
				String DEPART = rs.getString("DEPART");
				String NAME = rs.getString("NAME");
				String ADDRESS = rs.getString("ADDRESS");
				String PHONE = rs.getString("PHONE");
				String EMAIL = rs.getString("EMAIL");
		%>
		<tr>
			<td><%=NUM%></td>
			<td><%=PWD%></td>
			<td><%=DEPART%></td>
			<td><%=NAME%></td>
			<td><%=ADDRESS%></td>
			<td><%=PHONE%></td>
			<td><%=EMAIL%></td>
		</tr>
		<%
			}
		} 
		catch (SQLException ex) 
		{
			out.println("Student 테이블 호출이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} 
		finally 
		{
			if (rs != null)
			rs.close();
			if (stmt != null)
			stmt.close();
			if (conn != null)
			conn.close();
		}
		%>
	</table>
	<h3> <a href=./welcome.jsp> 메인 페이지로 돌아가기 </a> </h3> <p>
</body>
</html>
