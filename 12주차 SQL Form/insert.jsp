<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<form method="post" action="insert_process.jsp">
		<p>
			<label>학번 : </label><input type="text" name="NUM">
		<p>
			<label>비밀번호 : </label><input type="password" name="PWD">
		<p>
			<label>학과 : </label><input type="text" name="DEPART">
		<p>
			<label>이름 : </label><input type="text" name="NAME">
		<p>
			<label>주소 : </label><input type="text" name="ADDRESS"> 
		<p>
			<label>전화번호 : </label><input type="text" name="PHONE">
		<p>
			<label>이메일 : </label><input type="text" name="EMAIL">
		<p>
			<input type="submit" value="전송">
	</form>
	
	<h3> <a href=./welcome.jsp> 메인 페이지로 돌아가기 </a> </h3> <p>
</body>
</html>