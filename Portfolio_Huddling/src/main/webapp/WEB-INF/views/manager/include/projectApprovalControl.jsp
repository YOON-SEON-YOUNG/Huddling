<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
$(document).ready(function() {
	$(".btnUnApp").click(function() {
		var project_num = $(this).attr("data-project_num");
		$.post("projectApp", {
			"project_app" : 0,
			"project_num" : project_num
		}, function(rData) {
			console.log(rData);
			$("#page").load("projectApprovalControl?project_app=1");
		});
	});
});
</script>
<h2>프로젝트관리(승인)</h2>
<hr>
<table class="table" border="1" style="border-color: #F2F2F2">
	<tr>
		<th colspan="3">승인된 프로젝트</th>
	</tr>
	<tr>
		<th>번호</th>
		<th>프로젝트명</th>
		<th>차단</th>
	</tr>
	<c:forEach items="${projectList}" var="project">
		<tr>
			<td>${project.project_num}</td>
			<td>${project.project_name}</td>
			<td><input class="btnUnApp" type="button" value="차단" data-project_num="${project.project_num}"/></td>
		</tr>
	</c:forEach>
</table>