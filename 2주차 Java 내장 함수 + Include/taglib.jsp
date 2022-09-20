<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Directives Tag</title>
</head>
<body>
	<c:forEach var="i" begin="0" end="10" step="2">
		<c:out value="${i}" />
	</c:forEach>
</body>
</html>