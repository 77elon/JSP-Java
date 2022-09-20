<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="Func" class="ch04.com.Add" />
	<h4>구구단 출력하기</h4>
	<%
for(int i = 1; i< 10; i++)
{
	out.println("6 + " + i + " = " + Func.process(6, i) + "<br>"); 
}
%>
</body>
</html>