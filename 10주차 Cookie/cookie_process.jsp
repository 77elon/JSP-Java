<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<%
	Cookie cookie_id = new Cookie("userID", ""); //empty value
	Cookie cookie_pw = new Cookie("userPW", ""); //empty value
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	Date date = new Date(); 
	SimpleDateFormat S_date = new SimpleDateFormat("오늘은 yyyy-MM-dd일 입니다."); 
	SimpleDateFormat S_time = new SimpleDateFormat("현재 시각은 HH:mm 분 입니다."); 
	out.println(S_date.format(date) + "<br>");
	out.println(S_time.format(date) + "<br>");
	
	if (user_id.equals("admin") && user_pw.equals("admin1234")) 
	{
		cookie_id.setValue(user_id);
		cookie_pw.setValue(user_pw);
		out.print(user_id+ "님 쿠키 생성에 성공하였습니다." + "<br>");
		%>
		<a href="./welcome.jsp"> 다음 페이지로 이동</a>
		<%
	} 
	else 
	{
		out.print("쿠키 생성에 실패하였습니다." + "<br>");
		%>
		<a href="./cookie.jsp"> 처음 페이지로 이동</a>
		<%
	}
	response.addCookie(cookie_id); 
	response.addCookie(cookie_pw);
	
	//response.sendRedirect("./welcome.jsp");
	%>
</body>
</html>