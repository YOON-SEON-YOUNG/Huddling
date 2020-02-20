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
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script>
	$(document).ready(function(){
// 		$("#btnblock").click(function(e){
// 			console.log("클릭됨");
// 			var member_id = $(this).attr("data-member_id");
// 			console.log(member_id);
// 		});
		
		$("#btnblock").click(function(e){
			$("#page").load("userControl");
			console.log("클릭됨");
			var member_id = $(this).attr("data-member_id");
			console.log(member_id);
			var sData = {"member_rating": 1,"member_id" :member_id};
			console.log(sData);
			$.post("/manager/memberBan",sData,function(rData){
				console.log(sData);
				console.log(rData);
				if(member_id == member_id){
					alert("차단되엇습니다.");
				}
			});
			
		});
		
		$("#btnUnblock").click(function(e){
			$("#page").load("userControl");
			console.log("클릭됨");
			var member_id = $(this).attr("data-member_id");
			console.log(member_id);
			var sData = {"member_rating": 0,"member_id" :member_id};
			console.log(sData);
			$.post("/manager/memberBan",sData,function(rData){
				console.log(sData);
				console.log(rData);
				if(member_id == member_id){
					alert("차단해제되었습니다.");
				}
			});
			
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
<%--  memberVo:${memberVo}<br> --%>
<%--  mVo:${mVo}<br> --%>
<%--  profileVo: ${profileVo}<br>   --%>
<div class="container card card-body" style="margin:30px;">
			<div class="Back ">
				<i class="fa fa-arrow-left" onclick="Back()"></i>
			</div>
			
			<!-- 이미지 -->
				<div class="preview text-center" style="margin:30px;">
			
			<img class="preview-img" src="" alt="Preview Image" width="200" height="200"/>
                </div>
				<div class="form-group" style="text-align:center;">
			
					<label id="labId">아이디:${mVo.member_id }</label> 
						
				</div>
				
				<div class="form-group" style="text-align:center;">
					<label>이름:${mVo.member_name }</label> 
					
				</div>
				
				<div class="form-group" style="text-align:center;">
					<label>주소:${mVo.member_address }</label> 
				</div>
				
				
					<div class="form-group">
					<input class="btn btn-primary" type="button"
						value="차단" id="btnblock" data-member_id="${mVo.member_id }" />
						
					<input class="btn btn-primary" type="button"
						value="차단해제" id="btnUnblock" data-member_id="${mVo.member_id}"/>
						
				</div>
				
				
			</form>
		</div>
</body>
</html>