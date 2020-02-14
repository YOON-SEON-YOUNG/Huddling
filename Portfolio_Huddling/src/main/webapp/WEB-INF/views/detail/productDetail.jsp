<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8" session="false"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"> 
<!-- Style CSS -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<script>
$(document).ready(function() {
	
	$("#page").load("tapInfo");
	
	
	$("#tapInfo").click(function(e) {
		console.log("tapInfo 클릭됨");
 		e.preventDefault();
		$("#page").empty(); 
		$("#page").load("tapInfo");
	});
	$("#tapComment").click(function(e) {
		console.log("tapComment 클릭됨");
 		e.preventDefault();
		$("#page").empty(); 
		$("#page").load("tapComment");
	});
	$("#tapReview").click(function(e) {
		console.log("tapReview 클릭됨")
 		e.preventDefault();
		$("#page").empty(); 
		$("#page").load("tapReview")
	});
});

</script>


<div class="card card-body h-100">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-8">

					<div class="page-header">
						<!-- 카테고리 -->
						<h4 class="reviews">카테고리</h4>
						<!--  타이틀 -->
						<h2 class="reviews">'어른친구' 만드는 세대공감 보드게임</h2>
					</div>
					

					<!-- 탭 메뉴 -->
					<div id="menu" class="comment-tabs">
						<ul class="nav nav-tabs" role="tablist">

							<!-- tab1. 프로젝트 소개 -->
							<li class="active">
								<a id="tapInfo" role="tab" data-toggle="tab">
									<h4 class="reviews text-capitalize">프로젝트 소개</h4>
								</a>
							</li>

							<!-- tab2. 참여 내역 -->
							<li>
								<a id="tapComment" role="tab" data-toggle="tab">
									<h4 class="reviews text-capitalize">참여내역</h4>
								</a>
							</li>

							<!-- tab3. 후기 -->
							<li><a id="tapReview" role="tab" data-toggle="tab">
									<h4 class="reviews text-capitalize">후기</h4>
								</a>
							</li>
						</ul>
					</div>
						<!-- tap 내용 -->
							<div id="page" class="col-md-12">
							</div>						
						<!-- // tap 내용 끝 -->
				</div>
				<div class="col-md-4">


					<!-- 펀딩 현황 -->
					<div class="card card-body">
					<!-- 펀딩 달성률 -->
						<h1>236%</h1>
						<div class="progress">
							<div class="progress-bar w-75"></div>
						</div>
					<!-- 펀딩 달성 금액 -->
						<h2>2,363,000원</h2>
					<!-- 펀딩 목표 금액 -->	
						1,000,000원 목표
						<hr>
					<!--  펀딩 결제 안내 -->	
						<p>
							<strong>결제방법 안내</strong><br> 목표 100% 달성시에만 결제 추가 안내<br>
							100%달성 후에는 아래 지정일에 결제 진행<br> <br> <strong>결제예정일</strong><br>
							2020년 2월 10일 (1차),<br> 2020년 2월 24일 (2차),<br> 2020년 3월
							2일 (3차),<br> 2020년 3월 12일 (4차)
						</p>



						<!-- 펀딩 참여하기로 이동 -->
						<a href="../detail/orderOption">	
							<button type="button" class="btn btn-md active btn-primary"
								id="btnAttend">펀딩 참여하기</button>
						</a>			
											

					</div>


					<!-- 펀딩 리워드 항목 -->
					<div id="accordion" class="checkout">
						<!-- 리워드 1 -->
						<div class="panel checkout-step">
							<div>
								<span class="checkout-step-number">1</span>
								<!-- 리워드 타이틀 -->
								<h4 class="checkout-step-title">
									<a role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseOne"> 50,000원 이상 </a>
								</h4>
							</div>

							<!-- 리워드 내용 1 -->
							<div id="collapseOne" class="collapse in">
								<div class="checkout-step-body">
									<hr>
									마인도어 보드게임 1세트<br> 발송예상일 2020.02.17
									<hr>
									<button type="button" class="btn btn-default btn-circle">
										<i class="glyphicon glyphicon-ok"></i>
									</button>
									&nbsp;36명 참여&nbsp;&nbsp;64개 남음
								</div>
							</div>
						</div>

						<!-- 리워드 2 -->
						<div class="panel checkout-step">
							<div role="tab" id="headingTwo">
								<span class="checkout-step-number">2</span>
								<h4 class="checkout-step-title">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseTwo"> 86,000원 이상 </a>
								</h4>
							</div>

							<!-- 리워드 내용 2 -->
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="checkout-step-body">
									<hr>
									마인도어 보드게임 2세트<br> 발송예상일 2020.02.17
									<hr>
									<button type="button" class="btn btn-default btn-circle">
										<i class="glyphicon glyphicon-ok"></i>
									</button>
									&nbsp;36명 참여&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64개
									남음
								</div>
							</div>
						</div>

						<!-- 리워드 3 -->
						<div class="panel checkout-step">
							<div role="tab" id="headingThree">
								<span class="checkout-step-number">3</span>
								<h4 class="checkout-step-title">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseThree"> 120,000원
										이상 </a>
								</h4>
							</div>

							<!-- 리워드 내용 3 -->
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="checkout-step-body">
									<hr>

									마인도어 보드게임 3세트<br> 발송예상일 2020.02.17 2명 참여 48개 남음
									<hr>
									<button type="button" class="btn btn-default btn-circle">
										<i class="glyphicon glyphicon-ok"></i>
									</button>
									&nbsp;36명 참여&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64개
									남음
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>