<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<form action=session_process.jsp method=POST>
		<label>아 이 디 : </label> 
		<input type="text" name="id"><p>
		<label>비밀번호 : </label> 
		<input type="password" name="pw"><p>
		<input type="submit" value="전송"> <p>
	</form>
</body>
</html>