<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- include 로고, 검색, 로그인, 카테고리 -->
<%@ include file="include/board_header.jsp"%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="/resources/main/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/style.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/font-awesome.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Roboto+Mono:300,300i,400,400i,500,500i,700" rel="stylesheet">
</head>
<body>
<!-- <nav class="navbar navbar-default" style="height:55px">
					<div class="search">
						<div class="cd-main-header">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul>
							cd-header-buttons
						</div>
						<div id="cd-search" class="cd-search">
							<form action="#" method="post">
								<input name="Search" type="search" placeholder="Click enter after typing...">
							</form>
						</div>
					</div>
					<div class="clearfix"></div>
					</nav> -->

<div class="container-fluid">
		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="banner-top">
							<div class="banner-info_agileits_w3ls">
								<h3>무슨 색 도자기를<br>만들고 싶으세요?</h3>
								<p>- 도예인을 위한 '색소지 컬러칩'</p>
								<a href="single.html">Read More <i class="fa fa-caret-right" aria-hidden="true"></i></a>
							</div>

						</div>
					</li>
					<li>
						<div class="banner-top1">
							<div class="banner-info_agileits_w3ls">
								<h3>길을 잃으면<br>반려견 체체가 나타나요</h3>
								<p>- 동물들과 마음 치유하는 게임[힐링 애니멀]</p>
								<a href="single.html">Read More <i class="fa fa-caret-right" aria-hidden="true"></i></a>							
							</div>

						</div>
					</li>
					<li>
						<div class="banner-top2">
							<div class="banner-info_agileits_w3ls">
								<h3>책과 다이어리에<br>착 붙은 자석 책갈피</h3>
								<p>- 무엇이든 잃어버리지 않게, 가죽 책갈피 겸 펜꽂이</p>
								<a href="single.html">Read More <i class="fa fa-caret-right" aria-hidden="true"></i></a>
							</div>

						</div>
					</li>
					<li>
						<div class="banner-top3">
							<div class="banner-info_agileits_w3ls">
								<h3>영화의 언어를 탐색하는 일<br>계속해보겠습니다.</h3>
								<p>- 2020 시작하는[FILO]13호, 21세기 베스트 특별판</p>
							    <a href="single.html">Read More <i class="fa fa-caret-right" aria-hidden="true"></i></a>								
							</div>

						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!--//Slider-->

	<br/>
	<br/>
	<br/>
		<!-- 카테고리 -->
 	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" align="center">
			<a href="/">
				<button class="btn btn btn-primary  btn-lg mb50" type="button">
					전체 테마
				</button>
			</a>
			<a href="/board/categoryTech">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					테크/가전
				</button> 
			</a>
			<a href="/board/categoryBeauty">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					패션/뷰티
				</button> 
			</a>
			<a href="/board/categoryFood">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					푸드
				</button> 
			</a>
			<a href="/board/categoryCulture">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					문화
				</button>
			</a>
			<a href="/board/categoryDonate">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					기부/후원
				</button>
			</a>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<!-- /.row 카테고리 -->
	
	<!-- 리스트01 : 인기 추천 프로젝트 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<p style="font-weight: bold; font-size: large;">인기 추천 프로젝트</p>
		 
<!--             이미지 넘기기..?,...그..불러올 갯수대로 -->
<!--             <div class="controls pull-right hidden-xs" align="right"> -->
<!-- 				<a class="left fa fa-chevron-left btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="prev"> -->
<!-- 				</a> -->
<!-- 				<a class="right fa fa-chevron-right btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="next"> -->
<!-- 				</a> -->
<!--             </div>/.controls pull-right hidden-xs -->
            
        </div>
        <div class="col-md-2" >
        </div>
	</div><!-- /.row -->
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="row">
				<!-- 상품1 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_01.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								모빌리티산업 투자ㅣ대한민국 캠핑 카라반이 세계로 진출합니다.
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>

								<a class="btn btn-primary  btn-lg mb30" href="detail/detailMain">펀딩하러가기</a> 

							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품2 -->
				<div class="col-md-4" >
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_02.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								강집사 초대형 고양이 화장실 + 멀티박스!! 냥이와 집사를 위한 선택
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-50">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary  btn-lg mb30" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품3 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_03.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								스트릿 패션 완성! 환경을 생각한 가벼운 메신져백, [비트백]
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary  btn-lg mb30" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div> <!-- /.리스트01 : 인기프로젝트 슬라이드 묶음 -->
	
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
		
	<!-- 리스트02 : 신규 프로젝트 -->
	<div class="row">
		<div class="col-md-2">
			<!-- 여백 -->
		</div>
		<div class="col-md-8">
			<p style="font-weight: bold; font-size: large;">신규 프로젝트</p>
		 
<!--             이미지 넘기기..?,...그..불러올 갯수대로 -->
<!--             <div class="controls pull-right hidden-xs" align="right"> -->
<!-- 				<a class="left fa fa-chevron-left btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="prev"> -->
<!-- 				</a> -->
<!-- 				<a class="right fa fa-chevron-right btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="next"> -->
<!-- 				</a> -->
<!--             </div>/.controls pull-right hidden-xs -->
            
        </div>
        <div class="col-md-2" >
       	 	<!-- 여백 -->
        </div>
	</div><!-- /.row -->
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="row">
				<!-- 상품1 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_01.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								모빌리티산업 투자ㅣ대한민국 캠핑 카라반이 세계로 진출합니다.
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary  btn-lg mb30" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품2 -->
				<div class="col-md-4" >
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_02.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								강집사 초대형 고양이 화장실 + 멀티박스!! 냥이와 집사를 위한 선택
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-50">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary  btn-lg mb30" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품3 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 300px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_03.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								스트릿 패션 완성! 환경을 생각한 가벼운 메신져백, [비트백]
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary  btn-lg mb30" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div> <!-- /.리스트02 : 신규 프로젝트 슬라이드 묶음 -->
</div><!-- /.container -->

	
		<!-- js -->
	<script type="text/javascript" src="/resources/main/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	
	<!-- stats -->
	<script src="/resources/main/js/jquery.waypoints.min.js"></script>
	<script src="/resources/main/js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->


	<script src="/resources/main/js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!-- script for responsive tabs -->
	<script src="/resources/main/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!--// script for responsive tabs -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="/resources/main/js/move-top.js"></script>
	<script type="text/javascript" src="/resources/main/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->

	<script type="text/javascript">
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script type="text/javascript" src="/resources/main/js/bootstrap-3.1.1.min.js"></script>

<%@ include file="include/board_footer.jsp" %>