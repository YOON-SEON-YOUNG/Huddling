<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
$(document).ready(function() {
	$(".memberBan").click(function() {
		var input = $("#searchData").val();
		var member_id = $(this).attr("data-memberId");
		var that = $(this);
		$.post("/manager/memberBan", {
			"member_rating" : 1,
			"member_id" : member_id
		}, function(rData) {
			console.log(rData);
			$("#page").load("userControl?search="+input+"");
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
<table class="table" border="1" style="border-color: #F2F2F2">
	<tr>
		<th colspan="3">회원 검색 : <input id="searchData" type="text" value="${search}"/><input id="btnSearch" type="button" value="검색"/></th>
	</tr>
	<tr>
		<th>ID</th>
		<th>차단</th>
		<th>비고</th>
	</tr>
	
	<c:forEach items="${memberList}" var="list" >
		<tr id="memberList">
			<td>${list.member_id}</td>
			<c:choose>
				<c:when test="${list.member_rating == 0}">
					<td><input class="memberBan" type="button" value="차단" data-memberId="${list.member_id}"/></td>
					<td></td>	
				</c:when>
				<c:otherwise>
					<td><input class="memberUnban" type="button" value="차단해제" data-memberId="${list.member_id}"/></td>
					<td>차단된 멤버</td>
				</c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
	
	
</table>
