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
	<%="���� ��¥ : " + new java.util.Date()%>
	<br>
	<%="5�� ���� : " + calc%>
</body>
</html>