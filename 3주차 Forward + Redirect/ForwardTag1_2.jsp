<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> Forward Tag Example1</h1>

<%
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
%>


����� ���̵�� <%= id%> �̰�<br>
�н������ <%= pw %> �Դϴ�.
</body>
</html>