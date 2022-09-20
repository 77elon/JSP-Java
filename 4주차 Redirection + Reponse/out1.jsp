<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Out Example1</title>
</head>
<body>
	<h1>Out Example1</h1>
	<h4>현재 페이지의 Buffer 상태</h4>
	<%
	int Size = out.getBufferSize();
	int Usage = out.getRemaining();
	int Calc = Size - Usage;
	%>
	<%="출력 Buffer의 전체 크기 :  " + Size + "byte"%>
	<br>
	<%="남은 Buffer의 크기 :  " + Usage + "byte"%>
	<br>
	<%="현재 Buffer의 사용량 :  " + Calc + "byte" %><br>
</body>
</html>