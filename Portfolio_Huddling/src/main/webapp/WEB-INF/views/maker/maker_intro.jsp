<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/css/heroic-features.css" rel="stylesheet">

<script>
</script>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Start Project</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/">Home
							<span class="sr-only">(current)</span>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Jumbotron Header -->
		<header class="jumbotron my-4">
			<h1 class="display-5">펀딩 오픈 신청하기</h1>
			<p class="lead-4">허들링 펀딩으로 처음을 만들어보세요</p>
			<a href="/maker/createBoard" class="btn btn-primary btn-lg">프로젝트 시작하기</a>
			<p class="lead-3">
				프로젝트를 시작하면 <strong>성공노하우</strong>를 드립니다. 지금 바로 시작해보세요!
			</p>
		</header>

		<!-- Page Features -->
		<div class="cl-md-12">
			<p class="h3">만든 프로젝트</p>
		</div>
		<div class="row text-center my-4">
			<c:forEach var="projectVo" items="${list }">
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="/upload/imgView?fileName=${projectVo.project_image }
						"style='max-width: 100%; height: auto;'>
						<div class="card-body">
							<h4 class="card-title">${projectVo.project_name }</h4>
							<p class="card-text">${projectVo.project_story }</p>
						</div>
						<div class="card-footer">
							<button class="btn btn-primary makerHome"
								data-projectNum="${projectVo.project_num}">메이커 바로 가기</button>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<jsp:include page="../board/include/board_footer.jsp"></jsp:include>

	<!-- Bootstrap core JavaScript -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".makerHome").each(function() {
				$(this).click(function(e) {
// 					e.preventDefault();
					var num = $(this).attr('data-projectNum');
					var url = "/maker/home/" + num;
						location.href=url;
				});
			});
		});
	</script>
</body>
