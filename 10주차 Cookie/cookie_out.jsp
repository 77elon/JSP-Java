<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<%
	
	Cookie [] Coo_ary = request.getCookies();
	out.println("현재 설정된 쿠키의 개수 => " + Coo_ary.length + "<br>");
	out.println("==========================<br>");
	out.println("설정된 쿠키의 속성 이름 <br>");
	out.println("---------------------------------------------<br>");
	for (int i = 0; i < Coo_ary.length; i++) 
	{
		out.println(Coo_ary[i].getName() + "<br>");
		//out.println(Coo_ary[i].getValue() + "<br>");
		out.println("---------------------------------------------<br>");
	}
	for (int i = 0; i < Coo_ary.length; i++) 
	{
		Coo_ary[i].setMaxAge(0);
		response.addCookie(Coo_ary[i]);
	}
	%>
	<a href="./cookie.jsp"> 처음 쿠키 페이지로 이동</a>
</body>
</html>