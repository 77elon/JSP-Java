<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용 예제(세션 확인)</title>
</head>
<body>
	<%
		String name = "";
		String value = "";
		Enumeration en = session.getAttributeNames();
		
		while (en.hasMoreElements()) 
		{
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString(); //Object to String (Casting)
			out.println("Session Name : " + name + "<br>");
			out.println("Session Value : " + value + "<br>");
		} //end of if
		
	%>
</body>
</html>