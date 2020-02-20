<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		$.ajax({
			"url":"imgLoad/1",
			"type":"get",
			"success":function(){
				console.log('data load success');
			}
		});
		
		$("#projectTitle").text("스토리 작성");
		$("#projectDesc").text("메이커님의 프로젝트를 소개 해보세요.");
		$('#btnSave').click(function(e) {
			e.preventDefault();
			$.get('/maker/imgCopy/1', function(data){
				console.log('이미지 저장하는 중...');
				});
			submitContents(this);
		});
		$('#btnintroImg').click(function(e){
			e.preventDefault();
		});
		
		
	});
</script>
<form id="formTampData" name="formTampData">
	<input type="hidden" value="1" name="temp_story_num" />
	<c:forEach items="${list }" var="list">
	<input type="hidden" value="${list.imglist_name }" class="imgName"/>	
	</c:forEach>
	<div class="container-fluid">
		<div class="card">
			<div class="card-body">
				<div class="form-group">
					<label for="introImg">소개 이미지 등록</label>
					<div>
						<input type="hidden" name="story_introImg" value="${storyDto.story_summary}"/>
						<img src="#"/>
					</div>
					<button class="btn btn-secondary" id="btnintroImg">등록 하기</button>
				</div>
			</div>
			<div class="card-body">
				<div class="form-group">
					<label for="summary">프로젝트 요약</label>
					<div>
						<textarea class="form-control" rows="3" name="story_summary"
							id="summary">${storyDto.story_summary}</textarea>
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="form-group">
					<Label for="consentAd">광고 동의</Label> <a href="#">동의서 보기</a>
				</div>
				<div class="form-group">
					<Label for="storyBoard"></Label>
					<jsp:include page="include/smartEdit2.jsp"></jsp:include>
				</div>
			</div>
		</div>
</form>
<div class="card-body">
	<div class="form-gorup">
		<button class="btn btn-primary" id="btnSave">저장</button>
	</div>
</div>
</div>