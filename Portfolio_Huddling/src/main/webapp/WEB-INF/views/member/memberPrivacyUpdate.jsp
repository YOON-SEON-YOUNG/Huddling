<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
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
<style>
#image{
	height:70px;
	width:200px;
	right:200px;
	margin-left:400px; 
}
</style>
<title>Insert title here</title>
<script>

$(document).ready(function(){
	$("#btnSubmit").click(function() {
		if ($("#member_pw").val().trim() == "") {
			alert("비밀번호를 입력해 주세요");
			$("#member_pw").focus();
			return false;
		}
		
		if ($("#member_nickname").val().trim() == "") {
			alert("닉네임을 입력해 주세요");
			return false;
		}
		if ($("#member_name").val().trim() == "") {
			alert("이름을 입력해 주세요");
			return false;
		}
		if ($("#member_email").val().trim() == "") {
			alert("이메일을  입력해 주세요");
			return false;
		}
		if ($("#member_address").val().trim() == "") {
			alert("주소를 입력해 주세요");
			return false;
		}
		if ($("#member_call").val().trim() == "") {
			alert("전화번호를 입력해 주세요");
			return false;
		}
		else{
		$("#form").submit();
		}
	});
	

	
	//주소변경
	$("#member_address").keyup(function(e){
		console.log("키를누름");
		var member_address =$("#member_address").val();
		console.log(member_address);
		sData = {
				"member_address": member_address
		}
		$.post("/member/privacyUpdateAddress",sData,function(rData){
			if(rData =="0"){
				$('#text_address').text("사용가능주소입니다.");
				
			}else if(rData =="1"){
				$('#text_address').text("이미 사용중인 닉네임입니다.");
			}
			
		});
	});
	//이메일변경
	$("#member_email").keyup(function(e){
		console.log("키를누름");
		var member_email =$("#member_email").val();
		console.log(member_nickname);
		var overLap =$("#text_nickname").val();
		sData = {
				"member_email": member_email
		}
		$.post("/member/privacyUpdateEmail",sData,function(rData){
			if(rData =="0"){
				$('#text_email').text("사용가능이메일입니다.");
			}else if(rData =="1"){
				$('#text_email').text("이미 사용중인 이메일입니다.");
			}
		});
	});
	//전화번호변경
	$("#member_call").keyup(function(e){
		console.log("키를누름");
		var member_call =$("#member_call").val();
		console.log(member_call);
		sData = {
				"member_call":member_call
		}
		$.post("/member/privacyUpdateCall",sData,function(rData){
			if(rData =="0"){
				$('#text_call').text("사용가능 전화번호 입니다.");
			}else if(rData =="1"){
				$('#text_call').text("이미 사용중인 전화번호 입니다.");
			}
			
		});
			
		
	});
	//비밀번호변경
	$("#member_pw").keyup(function(e){
		console.log("키를누름");
		var member_pw =$("#member_pw").val();
		console.log(member_pw);
		sData = {
				"member_pw": member_pw
		}
		$.post("/member/privacyUpdatePw",sData,function(rData){
		
			if(rData =="0"){
				$('#text_pw1').text("사용가능한 비밀번호입니다");
			}else if(rData =="1"){
				$('#text_pw1').text("기존비밀번호와 동일합니다.");
				
			}
			
		});
			
		
	});
	
	//닉네임 변경
	$("#member_nickname").keyup(function(e){
		console.log("키를누름");
		var member_nickname =$("#member_nickname").val();
		console.log(member_nickname);
		var overLap =$("#text_nickname").val();
		sData = {
				"member_nickname":member_nickname
		}
		$.post("/member/registerCheckNick",sData,function(rData){
			if(rData =="0"){
				$('#text_nickname').text("사용가능닉네임입니다.");
			}else if(rData =="1"){
				$('#text_nickname').text("이미 사용중인 닉네임입니다.");
				
			}else{
				if($("text_nickname").size() ==null){
				alert("닉네임을다시작성해주세요");
				}
				}
		});
			
});
	//이름 변경
	$("#member_name").keyup(function(e){
		console.log("키를누름");
		var member_name =$("#member_name").val();
		console.log(member_name);
		sData = {
				"member_name": member_name
		}
		$.post("/member/privacyUpdateName",sData,function(rData){
			if(rData =="0"){
				$('#text_name').text("사용가능닉네임입니다.");
			}else if(rData =="1"){
				$('#text_name').text("이미 사용중인 닉네임입니다.");
				
			}
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
		<a><img src="/resources/images/hudling_logo2.jpg"id="image"></img></a>
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
<form action="/member/privacyUpdate" method="post" id="form">
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-10">
<!--     readonly -->
	
      <input type="text"  class="form-control-plaintext" id="member_id" name="member_id" value="${memberVo.member_id}">
    </div>
  </div>
  
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control formchk" id="member_pw" name="member_pw">
      <small id="text_pw1" class="form-text text-muted" >중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할닉네임</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="member_nickname" name="member_nickname">
      <small id="text_nickname" class="form-text text-muted" >중복확인</small>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할 이름</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="member_name" name="member_name">
      <small id="text_name" class="form-text text-muted" >중복확인</small>
    </div>
  </div>
  
  
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할전화번호</label>
    <div class="col-sm-10">
      <input type="tel" class="form-control" id="member_call" name="member_call">
      <small id="text_call" class="form-text text-muted" id="overLap">중복확인</small>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="member_address" name="member_address">
        <small id="text_address" class="form-text text-muted" id="overLap">중복확인</small>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">변경할이메일</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="member_email" name="member_email">
      <small id="text_email" class="form-text text-muted" id="overLap">중복확인</small>
    </div>
  </div>
  
  <button type="button" id="btnSubmit" class="btn btn-primary">변경하기</button>
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