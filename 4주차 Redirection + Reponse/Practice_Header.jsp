<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
	response.setHeader("Cache-control", "use_cache");
	response.addHeader("contentType", "text/html' charset=utf-8");
	response.setDateHeader("date", 1L);
	%>

	<%="Cache-control : " + response.getHeader("Cache-Control")%>
	<br>
	<%="contentType : " + response.getHeader("contentType")%>
	<br>
	<%="date : " + response.getHeader("date")%>
	<br>

</body>
</html>