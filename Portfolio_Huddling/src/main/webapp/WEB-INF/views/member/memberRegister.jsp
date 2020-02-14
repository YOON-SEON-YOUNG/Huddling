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
<style>
#btnIdCheck{
	right:200px;
}
#member_address{
	cursor: pointer;
}
</style>
<script>
function memberAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = data.address; // 최종 주소 변수
            console.log(addr);
			console.log(data);
            // 주소 정보를 해당 필드에 넣는다.
            document.getElementById("member_address").value = addr;
			console.log("member_address" + member_address);
         	
           
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
		<a><img src="resources/image/hudling_logo.jpg"></img></a>
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
    <input type="text" class="form-control" id="member_id" aria-describedby="emailHelp" name="member_id">
    <small id="textHelp" class="form-text text-muted">같은 아이디불가</small>
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
  </div>
  <!-- 이메일 -->
  <div class="form-group">
    <label for="exampleInputEmail1">이메일</label>
    <input type="email" class="form-control" id="member_email" aria-describedby="emailHelp" name="member_email">
  </div>
  <!-- 주소 -->
  <div class="form-group">
  
<!--  <label>Zip Code</label>  -->

        
<!-- <input type="text" name="zipNum" id="sample6_postcode" placeholder="우편번호"> -->
<!-- <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br> -->
        
<!--  <label>Address</label>  -->


<!--  <input type="text" name="addr1" id="sample6_address" placeholder="주소"><br> -->
<!-- <input type="text" name="addr2" id="sample6_detailAddress" placeholder="상세주소"> -->
<!--   </div> -->
  
  
    <label for="exampleInputEmail1">주소</label>
    <input type="text" id="member_address"  name ="member_address"placeholder="주소">
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
    <label class="form-check-label" for="exampleCheck1" id="">이용약관(필수)</label>
  </div>
  
  <button type="submit" class="btn btn-primary">회원가입</button>
</form>

		</div>
		<!-- 아무것도업음 -->
		<div class="col-md-3">
		<span><button id="btnIdCheck" onclick="idOnclick">아이디중복체크</button></span>
		</div>
	</div>
</div>

</body>
</html>
