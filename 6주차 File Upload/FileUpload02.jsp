<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
<form action="FileUpload02_Process.jsp" enctype="multipart/form-data" method="POST">
	<label>이름 : 
	</label>
	<input type="text" name="Name"> <p style = "line-height:2;">
	<label>주소 : 
	</label>
	<input type="text" name="Addr"> <p style = "line-height:2;">
	<label>설명 : 
	</label>
	<textarea name="Desc" cols="20" rows="3"> </textarea><p style = "line-height:2;">
	<label>파일 : 
	</label>
	<input type ="file" name ="FileParameter"> <p style = "line-height:3;">
	<input type ="submit"  value ="파일 올리기">
</form>
</body>
</html>