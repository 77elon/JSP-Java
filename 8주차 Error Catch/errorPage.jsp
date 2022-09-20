<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage.jsp"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	if (id.equals("") || passwd.equals("")) {
		Integer.parseInt(passwd);
		throw new RuntimeException();
	}
	%>

	id =	<%=id%>	<br /> 
	passwd =	<%=passwd%>	<br />

</body>
</html>