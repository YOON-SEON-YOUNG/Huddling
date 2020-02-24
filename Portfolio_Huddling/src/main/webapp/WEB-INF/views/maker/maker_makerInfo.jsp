<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(function() {
				$("#projectTitle").text("메이커 정보");
				var makerBagicInfo = "<span>";
				makerBagicInfo += "<h4>";
				makerBagicInfo += "메이커 기본 정보";
				makerBagicInfo += "</h4>";
				makerBagicInfo += "</span>";
				$("#projectTitle").append(makerBagicInfo);
				$("#projectDesc").text("프로젝트 상세 페이지에 노출되는 정보이니, 서포터와 소통이 가능한 정확한 정보를 입력해주세요.");
				
				//임시 저장
				$('#btnSave').click(function(){
					var url= "/maker/tempDataMakersInfo";
					formsave(url);
				});
			});
</script>
<div class="container-fluid">
	<form id="formTampData">
	<input type="hidden" value="1" name="temp_makerinfo_num"/>
	<div class="card">
		<div class="card-body">
			<div class="form-group">
				<label for="makerName"><strong>메이커 이름</strong></label>
				<input type="text" class="form-control" id="makerName" name="temp_makerinfo_name"
				value="${makersDto.temp_makerinfo_name }"/>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="makerImage"><strong>메이커 사진</strong></label>
				<img src='#'></img>
				<input type="hidden" value="1" name="temp_makerinfo_image"/>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inquiryNum"><strong>문의 전화번호</strong></label>
				<input type="text" class="form-control" id="inquiryNum" name="temp_makerinfo_tel"/>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inquiryEmail"><strong>문의 이메일</strong></label>
				<input type="text" class="form-control" id="inquiryEmail" name="temp_makerinfo_email"/>
			</div>
		</div>
	</div>
	<div class="card">
		<div class="card-body">
			<h4>대표자 정보</h4>
			<div class="form-group">
				<label for="repSortation"><strong>사업자 구분</strong></label> 
				<select class="form-control" name="temp_makerinfo_repr">
					<option>개인</option>
					<option>개인 사업자</option>
					<option>법인 사업자</option>
				</select>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="repName"><strong>대표자 명</strong></label>
				<input type="text" class="form-control" id="repName" name="temp_makerinfo_reprname"/>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="repEmail"><strong>대표자 이메일</strong></label>
				<input type="text" class="form-control" id="repEmail" name="temp_makerinfo_repremail"/>
			</div>
		</div>
	</div>
	</form>
</div>
<div class="card-body">
	<button class="btn btn-primary" id="btnSave">저장</button>
</div>
