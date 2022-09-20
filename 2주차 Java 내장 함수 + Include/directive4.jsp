<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Directive Example 4</title>
</head>
<body>
	<h1>Directive Example4</h1>
	<br>
	<%@include file="directiveTop.jsp"%><hr>
	include 지시자의 Body 부분입니다.
	<br>
	<hr>
	<%@include file="directiveBottom.jsp"%>
</body>
</html>