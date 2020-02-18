<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<script>
$(document).ready(function(){
	var url ="member/privacyUpdate";
	var sData ={"member_pw" : member_pw};
	var overLap =$("#overLap").val();

	
	$("#member_pw").keyup(function(e){
			
			var member_pw =$("#member_pw").val();
			$.post("member/loginPw",sData,function(e){
				console.log(sData);
			});
		});
	
	
});
</script>
</head>

<header>
<div class="container-fluid">
	<div class="row">
	<!-- 아무것두없음 -->
		<div class="col-md-3">
		</div>
		<!-- 작업시작 -->
		<div class="col-md-6">
		<a><img src="resources/image/hudling_logo.jpg"></img></a>
		</div>
		<!-- 아무것도업음 -->
		<div class="col-md-3">
		</div>
	</div>
</div>
</header>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
				
				</div>
				<div class="col-md-6">
<form action="/member/privacyUpdate" method="post">
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-10">
<!--     readonly -->
      <input type="text"  class="form-control-plaintext" id="member_id" name="member_id">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">기존비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="member_pw" name="member_pw">
      <small id="textPw" class="form-text text-muted" >중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="member_pw_new" name="member_pw">
      <small id="textPw_New1" class="form-text text-muted" >중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할비밀번호확인</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="member_pw_new2" name="member_pw">
    <small id="textPw_New2" class="form-text text-muted" >중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">닉네임</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="member_nickname" name="member_nickname">
      <small id="textHelp1" class="form-text text-muted" id="overLap">중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할닉네임</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="member_nickname" name="member_nickname">
      <small id="textHelp1" class="form-text text-muted" id="overLap">중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">전화번호</label>
    <div class="col-sm-10">
      <input type="tel" class="form-control" id="member_call" name="member_call">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할전화번호</label>
    <div class="col-sm-10">
      <input type="tel" class="form-control" id="member_call" name="member_call">
      <small id="textHelp1" class="form-text text-muted" id="overLap">중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="member_address" name="member_address">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">이메일</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="member_email" name="member_email">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할이메일</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="member_email" name="member_eamil">
      <small id="textHelp1" class="form-text text-muted" id="overLap">중복확인</small>
    </div>
  </div>
  
  <button type="submit" class="btn btn-primary">변경하기</button>
  <button type="button" class="btn btn-primary">취소하기</button>
  
  
</form>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>