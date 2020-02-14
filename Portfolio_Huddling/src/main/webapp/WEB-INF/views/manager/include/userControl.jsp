<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
$(document).ready(function() {
	$(".memberBan").click(function() {
		console.log("클릭됨")
	});
	$("#memberBan").click(function() {
		console.log("클릭됨")
	});
});
</script>
<h2>회원관리</h2>
<hr>
<table class="table" border="1" style="border-color: #F2F2F2">
	<tr>
		<th colspan="3">회원 검색 : <input type="text"/><input type="button" value="검색"/></th>
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
					<td><input name="memberBan" type="button" value="차단"/></td>
					<td></td>	
				</c:when>
				<c:otherwise>
					<td><input name="memberUnban" type="button" value="차단해제"/></td>
					<td>차단된 멤버</td>
				</c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
	
	
</table>
