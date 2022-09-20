<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
    function checkLogin() 
    {
        var form = document.loginForm;

        for (i=0; i<form.id.value.length; i++)
        {
            var ch = form.id.value.charAt(i);
            
            if ((ch<'a'||ch>'z') && (ch<'A'||ch>'Z') && (ch>'0'||ch<'9'))
            {
                alert("아이디는 영문자로만 입력 가능 합니다!");
                form.id.select();
                return;
            }
        }
        if (form.id.value == "") 
        {
            alert("아이디를 입력해 주세요!");
            form.id.focus();
            return false;
        } 
        else if (form.id.value.length < 5) 
        {
            alert("아이디는 5자 이상으로 입력해야 합니다!");
            form.passwd.select();
            return;
        } 
        else if (form.passwd.value == "") 
        {
            alert("비밀번호를 입력해 주세요!");
            form.passwd.focus();
            return false;
        } 
        else if ((form.passwd.value).search(form.id.value) > -1) 
        {
            alert("비밀번호는 ID를 포함할 수 없습니다.");
            form.passwd.focus();
            return false;
         }
        else if (form.title.value == "") 
        {
            alert("제목을 입력해 주세요!");
            form.title.focus();
            return false;
        } 
        else if (!isNaN(form.title.value.substr(0, 1))) 
        {
            alert("제목은 숫자로 시작할 수 없습니다!");
            form.title.focus();
            return false;
        }

        form.submit();
    }
</script>

</head>
<body>
    <form name="loginForm" action="Validation01_Process.jsp" method="POST">
        <label>아이디 : </label>
        <input type="text" name="id"> <p style = "line-height:1;">
        <label>비밀번호 : </label>
        <input type="password" name="passwd" > <p style = "line-height:1;">
        <label>제목 : </label>
        <input type="text" name="title"> <p style = "line-height:1;">
        <input type="button" value="전송" onclick="checkLogin()">
    </form>
</body>
</html>