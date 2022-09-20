<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkForm( ){
		var form = document.loginForm;
		
		if (document.frm.name.value.length < 6 || document.frm.name.value.length > 12){
			alert("이름을 6~12자 이내로 입력 가능합니다!");
			document.frm.name.select();
		}  	
 } 
</script>
<body>
	<form name="frm">
		<p>	이름 : <input type="text" name="name">
		<p>	<input type="button" value="전송" onclick="checkForm()">
	</form>
</body>
<html>