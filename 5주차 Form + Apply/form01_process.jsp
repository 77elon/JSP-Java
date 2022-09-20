<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<table border="1">
	<tr>
		<th>제목</th>
		<th>값</th>
	</tr>
	<%	
	request.setCharacterEncoding("UTF-8");
	String Name = request.getParameter("Name");	
	String Addr = request.getParameter("Addr");
	String MailAddr = request.getParameter("MailAddr");
	String MF = request.getParameter("MF");
	
	StringBuffer Collection1 = new StringBuffer();
	StringBuffer Collection2 = new StringBuffer();
	StringBuffer Collection3 = new StringBuffer();
	StringBuffer Collection4 = new StringBuffer();

	Collection1.append("이름");
	Collection2.append("주소");
	Collection3.append("이메일");
	Collection4.append("성별");
	/*input data*/
	out.println("<tr><td>" +  Collection1 + "</td>\n");
	out.println("<td>" + Name + "</td></tr>\n");
	out.println("<tr><td>" +  Collection2 + "</td>\n");
	out.println("<td>" + Addr + "</td></tr>\n");
	out.println("<tr><td>" +  Collection3 + "</td>\n");
	out.println("<td>" + MailAddr + "</td></tr>\n");
	out.println("<tr><td>" +  Collection4 + "</td>\n");
	out.println("<td>" + MF + "</td></tr>\n");
	%>

</body>
</html>