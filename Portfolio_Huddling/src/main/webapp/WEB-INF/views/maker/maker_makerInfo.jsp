<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(
			function() {
				$("#bread").text("makerInfo");
				$("#projectTitle").text("메이커 정보");
				var makerBagicInfo = "<span>";
				makerBagicInfo += "<h4>";
				makerBagicInfo += "메이커 기본 정보";
				makerBagicInfo += "</h4>";
				makerBagicInfo += "</span>";
				$("#projectTitle").append(makerBagicInfo);
				$("#projectDesc").text(
						"프로젝트 상세 페이지에 노출되는 정보이니, 서포터와 소통이 가능한 정확한 정보를 입력해주세요.")
			});
</script>
<div class="container-fluid">
	<div class="card">
		<div class="card-body">
			<h4>메이커 정보</h4>
			<div class="form-group">
				<label for="makerName"><strong>메이커 이름</strong></label> <input
					type="text" class="form-control" id="makerName" />
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="makerImage"><strong>메이커 사진</strong></label> <input
					type="text" class="form-control" id="makerImage" />
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inquiryNum"><strong>문의 전화번호</strong></label> <input
					type="text" class="form-control" id="inquiryNum" />
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inquiryEmail"><strong>문의 이메일</strong></label> <input
					type="text" class="form-control" id="inquiryEmail" />
			</div>
		</div>
	</div>
	<div class="card">
		<div class="card-body">
			<h4>대표자 정보</h4>
			<div class="form-group">
				<label for="repSortation"><strong>사업자 구분</strong></label> <select
					class="form-control">
					<option>개인</option>
					<option>개인 사업자</option>
					<option>법인 사업자</option>
				</select>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="repName"><strong>대표자 명</strong></label> <input
					type="text" class="form-control" id="repName" />
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="repEmail"><strong>대표자 이메일</strong></label> <input
					type="text" class="form-control" id="repEmail" />
			</div>
		</div>
	</div>
</div>
<div class="card-body">
	<button class="btn btn-primary" id="btnSave">저장</button>
</div>
</div>
