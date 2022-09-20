<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<form action ="form02_process.jsp" method ="post">
		<label>이름 : 	
		</label>
		<input type = "text" name ="Name" > <p> 
		<label>주소 : 	
		</label>
		<input type = "text" name ="Address" > <p> 
		<label>이메일 : 	
		</label>
		<input type = "text" name ="E-Mail" > <p> 
		<input type = "submit"  value ="전송">
	</form>
</body>
</html>