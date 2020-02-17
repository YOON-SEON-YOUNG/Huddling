<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
$(document).ready(function() {
	$(".btnApp").click(function() {
		var project_num = $(this).attr("data-project_num");
		$.post("projectApp", {
			"project_app" : 1,
			"project_num" : project_num
		}, function(rData) {
			console.log(rData);
			$("#page").load("projectUnApprovalControl?project_app=0");
		});
	});
});
</script>
<h2>프로젝트관리(미승인)</h2>
<hr>
<table class="table" border="1" style="border-color: #F2F2F2">
	<tr>
		<th colspan="3">미승인 프로젝트</th>
	</tr>
	<tr>
		<th>번호</th>
		<th>프로젝트명</th>
		<th>승인</th>
	</tr>
	
	<c:forEach items="${projectList}" var="project">
		<tr>
			<td>${project.project_num}</td>
			<td>프로젝트명</td>
			<td><input class="btnApp" type="button" value="승인" data-project_num="${project.project_num}" /></td>
		</tr>
	</c:forEach>
	
</table>