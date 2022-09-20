<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<%! String data1 = "Hello, Java Server Pages";
public String getString(String Input1)
{
	return Input1;
}
%>
	<%= getString(data1)
%>
</body>
</html>