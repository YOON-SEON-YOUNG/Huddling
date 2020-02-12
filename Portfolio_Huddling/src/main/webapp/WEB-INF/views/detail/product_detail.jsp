<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8" session="false"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<!-- Style CSS -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>


<div class="card card-body h-100">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-8">

					<div class="page-header">
						<h4 class="reviews">카테고리</h4>
						<h2 class="reviews">'어른친구' 만드는 세대공감 보드게임</h2>
					</div>

					<!-- 상세보기 탭 -->

					<div class="comment-tabs">
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a href="#comments-logout" role="tab"
								data-toggle="tab">
									<h4 class="reviews text-capitalize">프로젝트 소개</h4>
							</a></li>
							<li><a href="#add-comment" role="tab" data-toggle="tab">
									<h4 class="reviews text-capitalize">참여내역</h4>
							</a></li>
							<li><a href="#account-settings" role="tab" data-toggle="tab">
									<h4 class="reviews text-capitalize">후기</h4>
							</a></li>
						</ul>
						<div class="tab-content">

							<!-- 프로젝트 소개 -->


							<div class="tab-pane active" id="comments-logout">


								<!-- 프로젝트 내용 인클루드 -->
								<jsp:include
									page="/WEB-INF/views/detail/include/info.jsp" />


							</div>

							<!-- 참여 내역 -->

							<div class="tab-pane" id="add-comment">

								<div class="row">
									<div class="col-md-12">
										<div class="page-header">
											<h1>
												<small class="pull-right">45 comments</small> 참여댓글
											</h1>
										</div>


										<!-- 참여댓글 내용 인클루드 -->
										<jsp:include
											page="/WEB-INF/views/detail/include/comment.jsp" />





									</div>
								</div>
							</div>


							<!-- 후기 탭 -->


							<div class="tab-pane" id="account-settings">
								<div class="reviews">



									<!-- 후기 내용 인클루드 -->
									<jsp:include
										page="/WEB-INF/views/detail/include/review.jsp" />



								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-md-4">



					<div class="card card-body">

						<h1>236%</h1>
						<div class="progress">
							<div class="progress-bar w-75"></div>
						</div>
						<h2>2,363,000원</h2>
						1,000,000원 목표
						<hr>
						<p>
							<strong>결제방법 안내</strong><br> 목표 100% 달성시에만 결제 추가 안내<br>
							100%달성 후에는 아래 지정일에 결제 진행<br> <br> <strong>결제예정일</strong><br>
							2020년 2월 10일 (1차),<br> 2020년 2월 24일 (2차),<br> 2020년 3월
							2일 (3차),<br> 2020년 3월 12일 (4차)
						</p>
						<a href="board/fundingPage">
							<button type="button" class="btn btn-md active btn-primary"
								id="btnAttend">펀딩 참여하기</button>
						</a>


					</div>



					<div id="card-239873">
						<div class="card">
							<div class="card-header">
								<a class="card-link" data-toggle="collapse"
									data-parent="#card-239873" href="#card-element-307344">50,000원
									이상 </a>
							</div>
							<div id="card-element-307344" class="collapse show">
								<div class="card-body">
									<hr>
									마인도어 보드게임 1세트<br> 발송예상일 2020.02.17
									<hr>
									<button type="button" class="btn btn-default btn-circle">
										<i class="glyphicon glyphicon-ok"></i>
									</button>
									&nbsp;36명 참여&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64개
									남음

									<button type="button" class="btn btn-md active btn-primary">
										펀딩 참여하기</button>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<a class="collapsed card-link" data-toggle="collapse"
									data-parent="#card-239873" href="#card-element-781949">86,000원
									이상 </a>
							</div>
							<div id="card-element-781949" class="collapse">
								<div class="card-body">


									<hr>
									마인도어 보드게임 2세트<br> 발송예상일 2020.02.17
									<hr>
									<button type="button" class="btn btn-default btn-circle">
										<i class="glyphicon glyphicon-ok"></i>
									</button>
									&nbsp;36명 참여&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64개
									남음

									<button type="button" class="btn btn-md active btn-primary">
										펀딩 참여하기</button>


								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<a class="collapsed card-link" data-toggle="collapse"
									data-parent="#card-239873" href="#card-element-781949">120,000원
									이상 </a>
							</div>
							<div id="card-element-781949" class="collapse">
								<div class="card-body">
									<hr>

									마인도어 보드게임 3세트<br> 발송예상일 2020.02.17 2명 참여 48개 남음
									<hr>
									<button type="button" class="btn btn-default btn-circle">
										<i class="glyphicon glyphicon-ok"></i>
									</button>
									&nbsp;36명 참여&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64개
									남음

									<button type="button" class="btn btn-md active btn-primary">
										펀딩 참여하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>