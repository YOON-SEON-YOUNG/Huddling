<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		imgInp();
		helpText();
		var projectNum = ${projectNum};
		$.ajax({
			"url":"/maker/imgLoad/" + projectNum,
			"type":"get",
			"success":function(){
				console.log('data load success');
			}
		});
		
		$("#projectTitle").text("스토리 작성");
		$("#projectDesc").text("메이커님의 프로젝트를 소개 해보세요.");
		$('#btnSave').click(function(e) {
			e.preventDefault();
			$.get('/maker/imgCopy/' + projectNum, function(data){
				console.log('이미지 저장하는 중...');
				});
			submitContents(this);
		});
    });
</script>
	<div class="container-fluid">
<form id="formTampData" name="formTampData">
	<input type="hidden" value="${projectNum}" name="temp_story_num" />
	<c:forEach items="${list }" var="list">
	<input type="hidden" value="${list.imglist_name }" class="imgName"/>	
	</c:forEach>
		<div class="card">
			<div class="card-body">
				<div class="form-group">
				<label for="inputGroupFile01">소개 이미지 등록</label>
				<small class='form-text text-muted'>프로젝트 페이지 상단에 노출될 영상 또는 사진을 올려주세요.</small>
				<div class="custom-file">
			    <input type="file" class="custom-file-input" id="imgInp" aria-describedby="inputGroupFileAddon01">
			    <label class="custom-file-label" for="inputGroupFile01">이미지 파일을 선택하세요</label>
			  	</div>
					<div class="form-group">
					  <img id="blah" src="/upload/imgView?fileName=${storyDto.story_introimg }"/>
					  <input type="hidden" id = "introImg" 
					  value="<c:if test="${storyDto.story_introimg eq null || storyDto.story_introimg eq ''}">makerUpload/default.png</c:if>${storyDto.story_introimg }" name="story_introimg"/>
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="form-group">
					<label for="summary">프로젝트 요약</label>
					<small class='form-text text-muted'>프로젝트 페이지 상단 및 지지서명 시 노출됩니다.</small>
					<div>
						<textarea class="form-control" rows="3" name="story_summary"
							id="summary">${storyDto.story_summary}</textarea>
							<small class='form-text text-muted help'></small>
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="form-group">
					<Label for="storyBoard">프로젝트 스토리</Label>
					<small class='form-text text-muted'>진정성 있고 매력적인 스토리로 서포터의 마음을 움직여볼까요? <br>
					아래의 필수 항목에 맞춰 작성해주세요. 필수 항목이 누락될 경우 오픈이 지연될 수 있습니다.</small>
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
<jsp:include page="../board/include/board_footer.jsp"></jsp:include>