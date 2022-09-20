<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<label>아이디 : </label>
	<%=request.getParameter("id")%> <br>
	<label>비밀번호 : </label>
	<%=request.getParameter("passwd")%> <br>
	<label>제목 : </label>
	<%=request.getParameter("title")%> <br>
</body>
</html>