<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- include 로고, 검색, 로그인, 카테고리 -->
<%@ include file="include/board_header.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script><script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="/resources/main/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/style.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/font-awesome.css" rel="stylesheet">
<script src="/resources/js/projectShow.js"></script>
<script>
$(document).ready(function(){
	
	
	
	$("#project_search").click(function() {
		if ($("#project_search_input").val() != null && $("#project_search_input").val() != "") {
			console.log("검색 test");
			projectSearch($("#project_search_input").val());
		}
	});
	
	$("#project_search_input").keydown(function(key) {
		if ($("#project_search_input").val() != null && $("#project_search_input").val() != "") {
			if (key.keyCode == 13) {
				console.log("검색 test");
				projectSearch($("#project_search_input").val());
			}
		}
	});
	
	function projectSearch(name) {
		arrProject = new Array();
		moreShoeNum = 0;
		var sData = {
			"project_name" : name
		};
		$.get("/board/projectSearch", sData, function(rData) {
			$("#newList").empty();
			$.each(rData, function(index) {
				var pVo = rData[index];
				var project_num = pVo.project_num;
				var project_category = pVo.project_category;
				var project_image = pVo.project_image;
				var project_story = pVo.project_story;
				var project_name = pVo.project_name;
				var project_app = pVo.project_app;
				arrStrPush(project_num, project_category, project_image, project_story, project_name, project_app);
			});
			showProject();
		});
	}
	
	
	
	$.get("/board/projectList", function(rData) {
		$.each(rData, function(index) {
			var pVo = rData[index];
			var project_num = pVo.project_num;
			var project_category = pVo.project_category;
			var project_image = pVo.project_image;
			var project_story = pVo.project_story;
			var project_name = pVo.project_name;
			var project_app = pVo.project_app;
			arrStrPush(project_num, project_category, project_image, project_story, project_name, project_app);
		});
		showProject();
	});

	
// 	function arrStrPush(project_num, project_category, project_image, project_story, project_name, project_app) {
// 		var strList = "";
// 		strList +="<div class='col-md-4'>";
// 		strList +="<img class='card-img-top' alt='Bootstrap Thumbnail First' src='/resources/images/thumbnail_01.jpg'"; 
// 		strList += "style='max-width: 100%; height: auto;'/>";
// 		strList +="<div class='card-block'>";
// 		strList +="<h5 class='card-title'>";
// 		strList += project_name +"|"+ project_story;
// 		strList +="<br>";
// 		strList +="</h5>";
// 		strList +="<div class='progress' style='padding: 5px 0px 0px 0px; margin:5px;'>";
// 		strList +="<div class='progress-bar w-75'>";
// 		strList +="</div> </div> <p>";
// 		strList += "<a class='btn btn-primary  btn-lg mb30' href='detail/detailMain/"+project_num+"'>펀딩하러가기</a>";
// 		strList +="</p> </div> </div> </div>";
// 		arrProject.push(strList);
// 	}
	
// 	// 더보기 처리 상단
// 	var arrProject = new Array();
// 	var moreShoeNum = 0;
	
// 	function showProject() {
// 		for (var i = moreShoeNum; i < (moreShoeNum+6); i++) {
// 			$("#newList").append(arrProject[i]);
// 		}
// 		moreShoeNum = moreShoeNum + 6;
// 	}
	
// 	// 스크롤이 최하단일때
// 	$(window).scroll(function(){
// 		  if($(document).height() <= $(window).scrollTop() + $(window).height()){
// 		  	showProject();
// 		  }
// 	});
// 	// 더보기 처리 하단
	
// 	$("#moreShow").click(function() {
// 		showProject();
// 	});
	
});
</script>
</head>
<body>
<div class="container-fluid">
	<br>
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
	<br>
	<br>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" style="float: left;" id="newList">
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>
<!-- 	<button id="moreShow">더보기</button> -->
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