<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%= "Current Time : " + new java.util.Date(java.util.Calendar.getInstance().getTimeInMillis())
	%>
</body>
</html>