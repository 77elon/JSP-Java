<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Request Example1</title>
</head>
<body>
	<h1>Request Example1</h1>
	<form action="Request1_1.jsp" method="post">
		성명 : <input type="text" name="Name"> <br> 
		학번 : <input type="text" name="Identity"> <br> 
		성별 : <input	type="radio" name="MF" value="남성" checked>남성 
				 <input type="radio" name="MF" value="여성">여성 <br>
		학과 : <select	name="Major">
			<option value="체육학과">체육학과</option>
			<option value="컴퓨터공학과">컴퓨터공학과</option>
			<option value="교육학과">교육학과</option>
			<option value="수학과">수학과</option>

		</select> <br> <input type="submit" value="전송" />
	</form>
</body>
</html>