<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<%
	Cookie[] Coo_ary = request.getCookies();
	String UserID = "";
	
	out.println("현재 설정된 쿠키의 개수 => " + Coo_ary.length + "<br>");
	out.println("==========================<br>");
	for (int i = 0; i < Coo_ary.length; i++) 
	{
		out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + Coo_ary[i].getName() + "<br>");
		if (Coo_ary[i].getName().equals("userID")) 
		{
			UserID = Coo_ary[i].getValue();
			out.print(UserID);
			//if(UserID.equals("")) //if NULL
			//{
				//response.sendRedirect("./cookie_out.jsp");
			//}
		}
		out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + Coo_ary[i].getValue() + "<br>");
		out.println("---------------------------------------------<br>");
		out.println("<h4>" + Coo_ary[i].getValue() + "님 반갑습니다. <br> </h4>");
	}
	//out.println("<h4>" + UserID + "님 반갑습니다. <br> </h4>"); only admin output
	%>
	<a href="./cookie_out.jsp">로그아웃</a>
</body>
</html>