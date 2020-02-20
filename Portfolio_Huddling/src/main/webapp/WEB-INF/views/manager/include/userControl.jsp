<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {

		$("#btnSearch").click(function() {
			var input = $("#searchData").val();
			$("#page").load("userControl?search=" + input + "");
		});
		$(".memberShip").click(function(e) {
			e.preventDefault();
			$("#page").empty();
			console.log("클릭됨");
			var member_id = $(this).attr("data-member_id");
			$("#page").load("memberShip?member_id=" + member_id);
			console.log(member_id);
		});
	});
	
	$(".memberUnban").click(function() {
		var input = $("#searchData").val();
		var member_id = $(this).attr("data-memberId");
		var that = $(this);
		$.post("/manager/memberBan", {
			"member_rating" : 0,
			"member_id" : member_id
		}, function(rData) {
			console.log(rData);
			$("#page").load("userControl?search="+input+"");
		});
	});
	
	$("#btnSearch").click(function() {
		var input = $("#searchData").val();
		
		$("#page").load("userControl?search="+input+"");
	});
});
</script>
<h2>회원관리</h2>
<hr>
<div class="container-fluid">

	<div class="row">
		<div class="col-md-12 form-inline">

			<input class="form-control mr-sm-2" type="text" id="searchData" />

			<button class="btn btn-primary my-2 my-sm-0" id="btnSearch">
				검색하기</button>
		</div>
		<table class="table">

			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${memberList}" var="list">



					<tr id="memberList">
						<td>1</td>
						<td>
							<!-- 						href="/manager/memberShip?member_id=" --> <a
							class="memberShip" data-member_id="${list.member_id }">${list.member_id}</a>
						</td>
						<td>${list.member_name }</td>
						<td>${list.member_address}</td>
						<td><span class='banState'>
						<c:choose>
						<c:when test="${list.member_rating eq 1 }">
						차단
						</c:when>
						<c:otherwise>
						노차단
						</c:otherwise>
						</c:choose>
						</span></td>
					</tr>
				</c:forEach>



			</tbody>
		</table>
	</div>
</div>
</div>
