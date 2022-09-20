<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.util.Enumeration, java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	Enumeration en = request.getParameterNames();
	//Map list = request.getParameterMap();
	
	String id = (String) en.nextElement();
	String id_val = request.getParameter(id);
	
	String pw = (String) en.nextElement();
	String pw_val = request.getParameter(pw);
	
	String Name = (String) en.nextElement();
	String Name_val = request.getParameter(Name);
	
	String Identity = (String) en.nextElement();
	String [] Identity_val = request.getParameterValues(Identity);

%>
<%= id + " : " + id_val %> <br>
<%= pw + " : " + pw_val %> <br>
<%= Name + " : " + Name_val %> <br>
<%= Identity + " : " + Identity_val[0]%> <br>
</body>
</html>