<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%	
	request.setCharacterEncoding("UTF-8");
   	Enumeration List = request.getParameterNames();
	while(List.hasMoreElements())
	{
	   	String Parameter = (String) List.nextElement();
	   	String [] Data = request.getParameterValues(Parameter);
		out.println(Parameter + " : " + Data[0] + "<br>");
	}
	%>
</body>
</html>