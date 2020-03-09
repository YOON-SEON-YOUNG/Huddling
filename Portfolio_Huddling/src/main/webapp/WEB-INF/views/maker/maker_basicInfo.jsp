<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.tag-item, .tagUl {
	list-style: none;
	float: left;
	margin-left: 5px;
}
</style>
<link href="/resources/js/tagify.css" rel="stylesheet">
<script src="/resources/js/jQuery.tagify.min.js"></script>
<script src="/resources/js/tagify.js"></script>

<script>
	$(function() {
		imgInp();
		helpText();
// 		$('input[name=tags]').tagify();
		$("#projectTitle").text("기본 정보");
		$('#projectDesc').text('프로젝트를 대표할 주요 기본 정보를 입력하세요.')
		// 입력한 데이터 임시 저장
		$("#btnSave").click(function(e){
		e.preventDefault();
		var url='/maker/tempDataBasicInfo'
		formsave(url);
		});
		//카테고리 가져오기
		var category = '${basicDto.basic_category}';
		$('#basic_category option').each(function(){
			if($(this).val() == '${basicDto.basic_category}'){
				$(this).prop('selected','selected');
			}
		});
	});
</script>
<form id="formHidden">
<input type="hidden" id="checkSelecter" value="">
</form>
<form id="formTampData" name="formTampData">
<input type="hidden" name="temp_basic_num" value="${projectNum }">
<div class="container-fluid">
	<div class="card">
		<div class="card-body">
			<div class="form-group">
				<label for="projectName">프로젝트 제목</label>
				<small class='form-text text-muted'>제품·서비스의 매력포인트나 프로젝트의 주제가 잘 드러날 수 있는 키워드를 한 가지 이상 포함하는 간결한 제목을 써주시는 것이 좋습니다.</small> 
				<input type="text"
					class="form-control" name="basic_projectName" value='${basicDto.basic_projectName }' id='projectTitle'
					placeholder="제목 입력"/>
					<small class='form-text text-muted help'></small>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="amount">목표 금액</label>
				<small class='form-text text-muted help'>최소 50만 원 ~ 최대 10억 원으로 설정하세요</small>
				 <input type="text"	class="form-control" name="basic_amount" value='${basicDto.basic_amount }' id='projectAmount'
					placeholder="목표 금액 입력"/>
					<small class='form-text text-danger help'></small>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inputGroupFile01">소개 이미지 등록</label>
				<div class="custom-file">
			    <input type="file" class="custom-file-input" id="imgInp" aria-describedby="inputGroupFileAddon01">
			    <label class="custom-file-label" for="inputGroupFile01">이미지 파일을 선택하세요</label>
			  	</div>
					<div class="form-group">
					  <img id="blah" src="/upload/imgView?fileName=${basicDto.basic_representImg }"/>
					  <input type="hidden" id = "introImg" value="<c:if test="${basicDto.basic_representImg eq null || basicDto.basic_representImg eq ''}">makerUpload/default.png</c:if>" name="basic_representImg"/>
					</div>
				</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="Category">카테고리</label> <select class="form-control" name="basic_category" id='basic_category'>
					<option selected>카테고리 선택</option>
					<option value="tech">가전</option>
					<option value="fashion">패션</option>
					<option value="beauty">뷰티</option>
					<option value="food">푸드</option>
					<option value="culture">문화</option>
				</select>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="datepicker">프로젝트 종료일</label>
				<small class='form-text text-muted'>리워드를 설계하기 위해 프로젝트 종료일을 선택하세요.<br></small>
				<jsp:include page="include/datepicker.jsp"></jsp:include>
			</div>
		</div>
	</div>
</form>
	<div class="card-body">
		<div class="form-group">
			<button class="btn btn-primary" id="btnSave">저장</button>
		</div>
	</div>
</div>
<jsp:include page="../board/include/board_footer.jsp"></jsp:include>