<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkMember() {

		var regExpId = /^[a-z]/;
		var regExpName = /^[가-힣]*$/;
		var regExpPhone1 = /^\d{3}$/;
		var regExpPhone2 = /^\d{2,3}$/;
		var regExpPhone3 = /^\d{4}$/;
		var SSNUM = /^\d{6}-\d{7}$/;
		var regExpPasswd = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
		var form = document.Member;
		var reg_NumCheck = /^[0-9]*$/;
		var reg_IdentityNum1 = /^\d{6}$/;
		var reg_IdentityNum2 = /^\d{7}$/;
		
		if (form.id.value == "") {
			alert("아이디를 입력해 주세요!");
			form.id.focus();
			return false;
		}
		if (!regExpId.test(form.id.value)) {
			alert("아이디는 소문자만 가능합니다!");
			form.id.select();
			return;
		} 
		else if (form.passwd.value == "") {
			alert("비밀번호를 입력해 주세요!");
			form.passwd.focus();
			return;
		} 
		else if (form.passwd2.value == "") {
			alert("비밀번호 확인을 입력해 주세요!");
			form.passwd2.focus();
			return false;
		}
		else if (form.passwd.value != form.passwd2.value) {
			alert("비밀번호 확인이 일치하지 않습니다.");
			return false;
		}
		else if (!regExpPasswd.test(form.passwd.value)) {
			alert("영문+숫자+특수기호 8자리 이상으로 해주세요!");
			return;
		}
        else if (!regExpPhone1.test(form.phone1.value)) 
        {
			alert("연락처 입력을 확인해 주세요! 첫번째는 3자리");
			form.phone1.focus();
			return false;
		} 
        else if (!regExpPhone2.test(form.phone2.value)) 
		{
			alert("연락처 입력을 확인해 주세요! 두번째는 2~3자리");
			form.phone2.focus();
			return false;
		} 
        else if (!regExpPhone3.test(form.phone3.value)) 
		{
			alert("연락처 입력을 확인해 주세요! 세번째는 4자리");
			form.phone3.focus();
			return false;
		}
        else if (!reg_IdentityNum1.test(form.IdentityNum1.value)) 
        {
			alert("주민번호 앞자리는 숫자 6자리");
			form.IdentityNum1.focus();
			return false;
		} 
        else if (!reg_NumCheck.test(form.IdentityNum1.value)) 
		{
			alert("주민번호는 숫자로만 입력하세요!");
			form.IdentityNum1.focus();
			return false;
		} 
        else if (!reg_IdentityNum2.test(form.IdentityNum2.value)) 
        {
			alert("주민번호 뒷자리는 숫자 7자리 입니다.");
			form.IdentityNum2.focus();
			return false;
        }
        else if (!reg_NumCheck.test(form.IdentityNum2.value)) 
		{
			alert("주민번호는 숫자로만 입력하세요!");
			form.IdentityNum2.focus();
			return false;
		} 
        else if (form.name.value == "") 
        {
            alert("이름를 입력해 주세요!");
            form.name.focus();
            return false;
        } 
		else if (!regExpName.test(form.name.value)) 
		{
			alert("이름을 한글로만 입력해주세요!");
			form.name.focus();
			return false;
		}

		form.submit();

	}
</script>
<body>
	<h3>회원 가입</h3>
	<form action="validation05_process.jsp" name="Member" method="post">
		<p>
			아이디 : <input type="text" name="id">
		<p>
			비밀번호 : <input type="password" name="passwd">
		<p>
			비밀번호 확인 : <input type="password" name="passwd2">
		<p>
			연락처 : <input type="text" maxlength="3" size="3" name="phone1">
			- <input type="text" maxlength="3" size="3" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		<p>
        <label>주민번호 : </label>
        <input type="text" maxlength="6" size="6" name="IdentityNum1"> 
        - <input type="text" maxlength="7" size="7" name="IdentityNum2"> <p style = "line-height:1;">
		<p>
			이름 : <input type="text" name="name">
		<p>
			<input type="button" value="가입하기" onclick="checkMember()">
	</form>
</body>
</html>