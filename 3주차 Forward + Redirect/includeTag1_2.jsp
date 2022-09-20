<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include Tag Example1</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	%>
	<%=id%>
	Fighting!!
</body>
</html>