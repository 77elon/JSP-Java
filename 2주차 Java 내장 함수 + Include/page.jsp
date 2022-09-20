<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Directives Tag</title>
</head>
<body>
	<%
	double calc = Math.pow(5, 2);
	%>
	<%="현재 날짜 : " + new java.util.Date()%>
	<br>
	<%="5의 제곱 : " + calc%>
</body>
</html>