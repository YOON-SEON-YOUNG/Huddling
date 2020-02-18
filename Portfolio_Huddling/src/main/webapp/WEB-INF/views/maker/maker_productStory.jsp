<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		$("#bread").text("story");
		$("#projectTitle").text("스토리 작성");
		$("#projectDesc").text("메이커님의 프로젝트를 소개 해보세요.");
		var url = 'tempDataStory';
		formsave(url);
	});
</script>
<!-- <form id="formTempData" name="formTempData"> -->
<!-- </form> -->
	<div class="container-fluid">
		<div class="card">
			<div class="card-body">
				<div class="form-group">
					<label for="introImg">소개 이미지 등록</label>
					<div>
						<img src="#" />
					</div>
					<button class="btn btn-secondary">등록 하기</button>
				</div>
			</div>
			<div class="card-body">
				<div class="form-group">
					<label for="summary">프로젝트 요약</label>
					<div>
						<textarea class="form-control" rows="3" id="summary"></textarea>
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="form-group">
					<Label for="consentAd">광고 동의</Label> <a href="#">동의서 보기</a>
				</div>
				<div class="form-group">
					<Label for="storyBoard"> </Label>
					<jsp:include page="include/smartEdit2.jsp"></jsp:include>
				</div>
			</div>
		</div>
<div class="card-body">
	<div class="form-gorup">
		<button class="btn btn-primary" id="btnSave">저장</button>
	</div>
</div>
