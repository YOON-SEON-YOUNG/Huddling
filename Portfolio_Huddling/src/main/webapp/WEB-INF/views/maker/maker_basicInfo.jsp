<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<style>
.tag-item, .tagUl {
	list-style: none;
	float: left;
	margin-left: 5px;
}
</style>
<link href="/resources/js/tagify.css" rel="stylesheet">
<script src="/resources/js/jQuery.tagify.min.js"></script>

<script>
	$(function() {
		$("#bread").text("info");
		$('input[name=tags]').tagify();
		
		// 임시 저장된 기본 정보 가져오기
		
		// 입력한 데이터 임시 저장
		
		// 
		
	});
</script>
<div class="container-fluid">
	<div class="card">
		<div class="card-body">
			<div class="form-group">
				<label for="projectName">프로젝트 이름</label> <input type="text"
					class="form-control" id="projectName" />
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="amount">목표 금액</label> <input type="text"
					class="form-control" id="amount" />
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="representImg">프로젝트 대표 이미지</label>
				<div class="form-group">
					<button class="btn btn-primary">등록하기</button>
				</div>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="Category">카테고리</label> <select class="form-control">
					<option selected>카테고리 선택</option>
					<option value="1">가전</option>
					<option value="2">잡화</option>
					<option value="3">뷰티</option>
					<option value="4">푸드</option>
					<option value="5">교육</option>
				</select>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="datepicker">프로젝트 종료일</label>
				<jsp:include page="include/datepicker.jsp"></jsp:include>
			</div>
		</div>
		<div class=card-body>
			<div class="form-group">
				<label for="searchTag">검색용 태그</label> <input name="tags"
					class="form-control" id="searchTag" />
			</div>
		</div>
	</div>
	<div class="card-body">
		<div class="form-group">
			<button class="btn btn-primary" id="btnSave">저장</button>
		</div>
	</div>
</div>
</div>
