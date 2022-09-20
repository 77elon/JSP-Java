<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");

	String NUM = request.getParameter("NUM");
	String PWD = request.getParameter("PWD");
	String DEPART = request.getParameter("DEPART");
	String NAME = request.getParameter("NAME");
	String ADDRESS = request.getParameter("ADDRESS");
	String PHONE = request.getParameter("PHONE");
	String EMAIL = request.getParameter("EMAIL");

	Statement stmt = null;
	
	try 
	{
		String sql = "INSERT INTO Student VALUES('" + NUM + "','" + PWD + "', '" + DEPART + "', '" + NAME + "', '" + ADDRESS
		+ "', '" + PHONE + "', '" + EMAIL + "')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("Student 테이블 삽입이 성공했습니다.");
	} 
	catch (SQLException ex) 
	{
		out.println("Student 테이블 삽입이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	} 
	finally 
	{
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
	}
	%>
	<h3> <a href=./welcome.jsp> 메인 페이지로 돌아가기 </a> </h3> <p>
</body>
</html>
