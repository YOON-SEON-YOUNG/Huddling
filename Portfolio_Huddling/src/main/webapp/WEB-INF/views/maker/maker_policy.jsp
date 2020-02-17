<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(
			function() {
				$("#bread").text("policy");
				$("#projectTitle").text("정책");
				$("#projectDesc").text(
						"서포터에게 하는 약속인 만큼, 프로젝트 오픈 후에는 수정이 불가하니 신중하게 작성하세요.");
			});
</script>
<div class="container-fluid">
	<div class="card">
		<div class="card-body">
			<h5>리워드 정보 제공 고시</h5>
			<p>서포터에게 리워드를 제공하는 경우, 전자 상거래 등에서의 상품 등의 정보제공에 관한 고시법에 따라 리워드 정보
				제공 고시를 반드시 입력해야 합니다.</p>
			<button class="btn btn-secondary">추가 하기</button>
		</div>
		<div class="card-body">
			<div>펀딩금 반환 정책</div>
			<div class="card card-body">
				<strong>본 프로젝트는 펀딩금 반환 정책이 적용됩니다.</strong>
				<p>자세한 내용은 운영 정책에서 확인해주세요.</p>
				<p>시행일 2020.02.12</p>
				<strong>펀딩금 반환 정책을 반드시 확인해주세요.</strong>
				<ul>
					<li>메이커가 프로젝트 페이지에 기재한 바와 동일한 품질의 리워드를 약속한 일자에 제공하지 못할 경우,
						서포터는 아래 정책에 따라 펀딩금 반환 신청을 할 수 있습니다.</li>
					<li>이때, 허들링 고객센터에서 서포터로부터 접수된 내용을 메이커와 소통 과정을 거쳐 펀딩금 반환 여부를
						결정하고, 그 사항을 허들링이 서포터에게 안내하는 방식으로 진행됩니다.</li>
					<li>펀딩금 반환이 확정되면, 메이커가 서포터에게 계좌이체하는 방식이 아닌 허들링에서 카드 결제 취소하는
						방식으로 진행합니다. 메이커가 계좌 이체를 통해 서포터에게 별도로 환불을 진행하여 와디즈 결제 취소와 중복 적용될
						경우, 허들링은 해당 계좌 이체건에 대해서 책임지지 않습니다.</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="card-body">
				<label> <span> <input type="checkbox" /> (필수) 펀딩안내
						탭에 노출되는 위험요인 및 정책을 모두 확인하였습니다.
				</span>
				</label>
			</div>
		</div>
	</div>
		<div class="card-body">
			<button class="btn btn-primary" id="btnSave">저장</button>
		</div>
</div>