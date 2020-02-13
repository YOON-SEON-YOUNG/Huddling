<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Huddling</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="/member/register" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="member_id" id="member_id" required/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="member_pw" id="member_pw" required/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="member_name" id="member_name" required/></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="member_nickname" id="member_nickname" required/></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="member_email" id="member_email" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="member_address" id="member_address"/></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="member_call" id="member_call"/></td>
			</tr>
		</table>
		<hr>
		<input type="submit" value="회원가입"/>
	</form>
</body>
</html>