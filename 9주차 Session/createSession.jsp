<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용 예제(세션 생성)</title>
</head>
<body>
	<%
	String id = "rorod";
	String pwd = "1234";
	session.setAttribute("idKey", id);
	session.setAttribute("pwdKey", pwd);
	out.print("세션이 생성되었습니다. <p>");
	%>
	<a href="viewSessionInfo.jsp">세션 정보를 확인하는 페이지로 이동하기</a>
</body>
</html>