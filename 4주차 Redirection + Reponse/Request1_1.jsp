<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Request Example1</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String Stdname = request.getParameter("Name");
	String StdIdentity = request.getParameter("Identity");
	String StdMF = request.getParameter("MF");
	String StdMajor = request.getParameter("Major");
	%>
	<h1>Request Example1</h1>
	<p>
		이름 :
		<%=Stdname%>
	<p>
		학번 :
		<%=StdIdentity%>
	<p>
		성별 :
		<%=StdMF%>
	<p>
		학과 :
		<%=StdMajor%>
</body>
</html>