<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<%
		Connection conn = null;
		try {
			String url = "jdbc:mysql://localhost:3306/JSPExerciseDB?useSSL=false";
			String user = "root";
			String password = "1234";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("데이터베이스 연결에 성공하였습니다.");
		} catch (SQLException ex) {
			out.println("데이터베이스 연결에 실패하었습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (conn != null)
				conn.close();
		}
	%>
	<h3> <a href=./welcome.jsp> 메인 페이지로 돌아가기 </a> </h3> <p>
</body>
</html>