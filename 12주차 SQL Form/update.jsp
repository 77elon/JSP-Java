<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype HTML>
<html>
<head>
<title>Database SQL</title>
</head>
<body>	
	<form method="post" action="update_process.jsp">
		<p>변경전 학과명 : <input type="text" name="before_depart">
		<p>변경후 학과명 : <input type="text" name="after_depart">		
		<p><input type="submit" value="전송">
	</form>
	<h3> <a href=./welcome.jsp> 메인 페이지로 돌아가기 </a> </h3> <p>
</body>
</html>
