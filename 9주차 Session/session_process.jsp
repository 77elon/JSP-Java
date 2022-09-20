<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.text.*"%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sessions</title>
</head>
<body>
	<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	
	Date sess_time = new Date(); 
	SimpleDateFormat sd = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초"); 
	sess_time.setTime(session.getCreationTime());

	out.println(sd.format(sess_time) + "<p>");
	//out.println(new java.util.Date().toLocaleString() + "<p>");
	
	if(user_id.equals("")) //null is ""
	{
		response.sendRedirect("session_out.jsp");
	}
	else if (user_id.equals("admin") && user_pw.equals("admin1234")) 
	{
		session.setAttribute("userID", user_id);
		session.setAttribute("userPW", user_pw);
		out.println(user_id + "님 세션 설정에 성공하였습니다.<p>");
	%>
	<a href="welcome.jsp"> 다음 페이지로 이동하기</a><p>
	<%
		} 
	else 
	{
		out.println(user_id + "님 세션 객체 정의에 실패했습니다.<p>");
	}
	%>
	
</body>
</html>