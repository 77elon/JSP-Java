<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>

	<%
	try {
		int a = 100 / 0;
	} 
	catch (Exception e) 
	{
	%>
		<p>
		<label>오류 발생 : </label><%=e.getLocalizedMessage()%>
		
		<%
	}
		%>
	
</body>
</html>