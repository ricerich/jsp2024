<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		//var form = documents.loginForm;
		
		var id = documents.loginForm.id.value;
		var pw = documents.loginForm.passwd.value;
		
		if (id == "") {
			alert("아이디를 입력해 주세요.");
			documents.loginForm.id.focus();
			return false;
		} else if (pw == "") {
			alert("비밀번호를 입력해 주세요");
			documents.loginForm.passwd.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="password" name="passwd">
		<p>	<input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>