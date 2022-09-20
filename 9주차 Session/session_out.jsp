<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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

	out.print("<h3>----- 세션을 삭제하기 전 -----</h3><p>");

	while (en.hasMoreElements()) 
	{
		i++;
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();

		out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<p>");
		out.println("설정된 세션 값 [ " + i + " ] : " + value + "<p>");
	}
	session.invalidate();
	%>

	<%
	out.print("<h3>----- 세션을 삭제한 후 -----</h3><p>");
	if (request.isRequestedSessionIdValid() == true) 
	{
		out.print("세션이 유효합니다.<p>");
		en = session.getAttributeNames();
		i = 0;

		while (en.hasMoreElements()) 
		{
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}
	} 
	else 
	{
		out.print("세션이 유효하지 않습니다. <p>");
	}
	%>
	<a href="session.jsp"> 처음 페이지로 이동하기</a>
</body>
</html>