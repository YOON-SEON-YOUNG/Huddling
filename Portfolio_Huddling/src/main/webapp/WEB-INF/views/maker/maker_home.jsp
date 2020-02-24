<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script type="text/javascript">
	$(document).ready(function() {
		$("#bread").remove();
		$("#projectTitle").text("펀딩 준비");
		$("#projectDesc").text("본격적으로 펀딩을 오픈하기 위해 프로젝트에 대한 아래의 필수항목을 작성하세요.")

		$("#btnBasicInfo").click(function() {
			console.log("click");
		});
		$(".btn").click(function() {
			var btnId = $(this).attr("id");
			switch (btnId) {
			case "btnBasicrequir":
				location.href = "/maker/requir/1"
				break;
			// 기본 정보
			case "btnBasicInfo":
				location.href = "/maker/info/1"
				break;
			// 스토리 작성
			case "btnStory":
				location.href = "/maker/story/1"
				break;
			// 리워드 설계
			case "btnReword":
				location.href = "/maker/reword/1"
				break;
			// 메이커 정보
			case "btnMakerInfo":
				location.href = "/maker/makerInfo/1"
				break;
			}
		});
	});
</script>

<body>
	<div class="container-fluid">
		<!-- 기본 요건 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						기본 요건 <span class="badge btn-success">작성 완료</span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnBasicrequir">작성</button>
			</div>
		</div>
		<!-- 기본 정보 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						기본 정보 <span class="badge btn-success">작성 완료</span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnBasicInfo">작성</button>
			</div>
		</div>
		<!-- 스토리 작성 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						스토리 작성 <span class="badge btn-primary">작성 중</span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnStory">작성</button>
			</div>
		</div>

		<!-- 리워드 설계 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						리워드 설계<span class="badge btn-secondary">작성 전</span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnReword">작성</button>
			</div>
		</div>
		<!-- 정책 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						정책 <span class="badge btn-secondary">작성 전</span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnPolicy">작성</button>
			</div>
		</div>

		<!-- 메이커 정보 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						메이커 정보 <span class="badge btn-secondary">작성 전</span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnMakerInfo">작성</button>
			</div>
		</div>

		<!-- 제출 버튼 -->
		<div class="row">
			<div class="col-md=12">
				<button class="btn btn-success">제출</button>
			</div>
		</div>
	</div>