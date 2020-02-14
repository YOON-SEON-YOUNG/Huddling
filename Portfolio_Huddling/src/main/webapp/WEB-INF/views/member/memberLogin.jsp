<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>로그인</title>
<script>
$(document).ready(function() {
	$("#login").click(function(e) {
		console.log("클릭");
		var member_id = $("#member_id").val();
		var member_pw = $("#member_pw").val();
		$.post("/member/loginIdCheck", {
			"member_id" : member_id
		}, function(rData) {
			console.log(rData);
			if (rData == "1") {
				// 아이디 체크 완료 후 패스워드 체크
				$.post("/member/loginPwCheck", {
					"member_id" : member_id,
					"member_pw" : member_pw
				}, function(rData) {
					if (rData == "1") {
						// 로그인 성공
						alert("로그인성공");
						$("#form").submit();
					} else {
						alert("비밀번호가 틀렸습니다.");
					}
				});
			} else {
				alert("존재하지 않는 아이디입니다.");
			}
		});
	});
});
</script>
</head>
<body>
	<h1>로그인</h1>
	<hr>
	<form id="form" action="/member/login" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="member_id" name="member_id" required/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" id="member_pw" name="member_pw" required/></td>
			</tr>
		</table>
		<hr>
		<input type="button" id="login" value="로그인"/>
	</form>	
</body>
</html>