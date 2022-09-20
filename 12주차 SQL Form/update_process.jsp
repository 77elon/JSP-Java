<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!doctype HTML>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");

		String before = request.getParameter("before_depart");
		String after = request.getParameter("after_depart");
		
		ResultSet rs = null;
		Statement stmt = null;	
		//PreparedStatement pstmt = null;		

		try {
			String sql = "select depart from Student where depart = '" + before + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			//String sql = "select * from student where depart = ?";
			//pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, before);
			//rs = pstmt.executeQuery();

			if (rs.next())
			{
				String depart = rs.getString("depart");				
				
				if (before.equals(depart)) 
				{
					sql = "update Student set depart = '" + after + "' where depart = '" + before + "'";
					stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					//sql = "update student set depart = ? where depart = ?";
					//pstmt = conn.prepareStatement(sql);
					//pstmt.setString(1, after);
					//pstmt.setString(2, depart);
					//pstmt.executeUpdate();
					out.println("Student 테이블을 수정했습니다.");
				} 
				else
					out.println("Student 테이블을 수정하지 못했습니다.");
			} 
			else
				out.println("Student 테이블에 일치하는 학과가 없습니다.");
		} 
		catch (SQLException ex) 
		{
			out.println("SQLException: " + ex.getMessage());
		} 
		finally 
		{
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			//if (pstmt != null)
				//pstmt.close();
			if (conn != null)
				conn.close();
		}
	%>
	<h3> <a href=./welcome.jsp> 메인 페이지로 돌아가기 </a> </h3> <p>
</body>
</html>