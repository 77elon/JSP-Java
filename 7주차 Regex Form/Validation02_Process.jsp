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
	<label>비밀번호 확인 : </label>
	<%=request.getParameter("passwd_chk")%> <br>
	<label>주민번호 : </label>
	<%=request.getParameter("IdentityNum1")%>-<%=request.getParameter("IdentityNum2")%><br>
	<label>연락처 : </label>
	<%=request.getParameter("phone1")%>-<%=request.getParameter("phone2")%>-<%=request.getParameter("phone3")%><br>
	<label>이름 : </label>
	<%=request.getParameter("Name")%> <br>
	
</body>
</html>