<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sessions</title>
</head>
<body>
	<%
		String name = "";
		String value = "";
		Enumeration en = session.getAttributeNames();
		int i = 0;
		
		while (en.hasMoreElements()) 
		{
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString(); //Object to String (Casting)
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>");
			if(name.equals("userID") && !value.equals(""))
			{
				out.println("<h3>" + value + "님 반갑습니다. <h3><p>");
				%>
				<a href="session_out.jsp"> 로그아웃 </a>
				<%
			}
		} //end of if
		
	%>
</body>
</html>