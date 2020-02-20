<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
#btnIdCheck{
	right:200px;
}
#member_address{
	cursor: pointer;
}
</style>
<script>
  
$(document).ready(function(){
	$("#member_id").keyup(function(e){
		console.log("키를누름");
		var member_id =$("#member_id").val();
		console.log(member_id);
		var overLap =$("#overLap").val();
		var url ="/member/registerCheckId";
		var sData ={"member_id" : member_id};
		console.log(sData);
		$.post(url,sData,function(rData){
			console.log(rData);
			if(rData =="0"){
				$('#textHelp1').text("사용가능아이디입니다");
			}else if(rData =="1"){
				$('#textHelp1').text("이미 사용중이거나 탈퇴한 아이디입니다.");
			}
		});
		
	});
	
	$("#member_nickname").keyup(function(e){
		console.log("키를누름");
		var member_nickname =$("#member_nickname").val();
		console.log(member_nickname);
		var overLap =$("#overLap").val();
		sData = {
				"member_nickname":member_nickname
// 				'member_nickname':member_nickname
		}
		$.post("/member/registerCheckNick",sData,function(rData){
			if(rData =="0"){
				$('#textHelp2').text("사용가능닉네임입니다.");
			}else if(rData =="1"){
				$('#textHelp2').text("이미 사용중인 닉네임입니다.");
			}
		});
			
		
	});
});
//지도 api
function memberAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = data.address; // 최종 주소 변수
            
            // 주소 정보를 해당 필드에 넣는다.
            document.getElementById("member_address").value = addr; 
        }
    }).open();
}
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
		<a><img src="/resources/images/hudling_logo.jpg"></img></a>
		</div>
		<!-- 아무것도업음 -->
		<div class="col-md-3">
		</div>
	</div>
</div>
</header>
<!-- 모달창가져옴 -->
<%-- <%@ include file="include/memberAddress.jsp" %> --%>
<!-- //모달창가져옴 -->
<body>
<div class="container-fluid">
	<div class="row">
	<!-- 아무것두없음 -->
		<div class="col-md-3">
		</div>
		
	<!--                                         작업시작                         -->
		<div class="col-md-6">
		<form action="/member/register" method="post">
	<!--                                 아이디                                   -->
  <div class="form-group">
    <label for="exampleInputEmail1">아아디</label>
    <input type="text" class="form-control" id="member_id" aria-describedby="emailHelp" name="member_id" >
 	<small id="textHelp1" class="form-text text-muted" >중복확인</small>
  </div>
  
   <!--                                   이름                                     -->
  <div class="form-group">
    <label for="exampleInputEmail1">이름</label>
    <input type="text" class="form-control" id="member_name" aria-describedby="emailHelp" name="member_name">
  </div>
  
  <!-- 비밀번호 -->
  <div class="form-group">
    <label for="exampleInputPassword1">비밀번호</label>
    <input type="password" class="form-control" id="member_pw" name="member_pw">
  </div>
  
  <!-- 닉네임 -->
  <div class="form-group">
    <label for="exampleInputEmail1">닉네임</label>
    <input type="text" class="form-control" id="member_nickname" aria-describedby="emailHelp" name="member_nickname">
  	<small id="textHelp2" class="form-text text-muted" id="overLap">중복확인</small>
  </div>
  <!-- 이메일 -->
  <div class="form-group">
    <label for="exampleInputEmail1">이메일</label>
    <input type="email" class="form-control" id="member_email" aria-describedby="emailHelp" name="member_email">
  </div>
  <!-- 주소 -->
  <div class="form-group">
    <label for="exampleInputEmail1">주소</label>
    <input type="text" id="member_address"  name ="member_address"class="form-control" id="member_email" aria-describedby="emailHelp"placeholder="주소">
<input type="button" onclick="memberAddress()" value="주소 검색"><br>
  </div>
  
 
  <!-- 전화번호 -->
  <div class="form-group">
    <label for="exampleInputEmail1">전화번호</label>
    <input type="tel" class="form-control" id="member_call" aria-describedby="emailHelp" name="member_call">
  </div>
  
 
  
  <!-- 이용약관 -->
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="terms">
    
    <!-- 이용약관 모달이 들어감 -->
    <label class="form-check-label" for="exampleCheck1" id="dd">이용약관(필수)</label>
  </div>
  
  <button type="submit" class="btn btn-primary">회원가입</button>
</form>

		</div>
		<!-- 아무것도업음 -->
		<div class="col-md-3">
		</div>
	</div>
</div>

</body>
</html>
