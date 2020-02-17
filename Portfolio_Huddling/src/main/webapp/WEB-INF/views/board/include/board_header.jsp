<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="" />

	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>	
	<link href="/resources/main/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="/resources/main/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="/resources/main/css/style.css" rel='stylesheet' type='text/css' />
	<link href="/resources/main/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Roboto+Mono:300,300i,400,400i,500,500i,700" rel="stylesheet">
</head>

	<!-- js -->
	<script type="text/javascript" src="/resources/main/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!--search-bar-->
	<script src="/resources/main/js/main.js"></script>
	<!--//search-bar-->
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>




	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script type="text/javascript" src="/resources/main/js/bootstrap-3.1.1.min.js"></script>
	
<body>
	<!--Header-->
	<div class="header" id="home">
		<!--top-bar-w3-agile-->
		<div class="top-bar_w3agileits">
			<div class="top-logo_info_w3layouts">
				<div class="col-md-3 logo">
					<h1><a class="navbar-brand" href="/"><img src="/resources/images/hudling_logo.jpg" 
					style="width:250px; height:125px;"></a></h1>
				</div>

						<!-- 로그인, 회원가입 -->		
					<ul class="top-right-info_w3ls">
					<c:choose>
				<c:when test="${not empty memberVo}">
					<span>${memberVo.member_nickname}님 반가습니다.</span>
					<input type="button" id="logout" value="로그아웃" onclick="location.href='/member/logout'">
				</c:when>
				<c:otherwise>
					<li><i class="fa fa-login" aria-hidden="true" onClick="location.href='/member/login'">로그인</i></li>
					<li><i class="fa fa-join" aria-hidden="true" onClick="location.href='/member/register'">회원가입</i></li>
				</c:otherwise>
			</c:choose>			
					</ul>
					<!-- // 로그인, 회원가입 -->	
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="header-nav">
				<div class="inner-nav_wthree_agileits">
					<nav class="navbar navbar-default">			
						<!-- 메뉴 -->
						<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
							<nav>
								<ul class="nav navbar-nav">
									<li><a href="/" class="active">Home</a></li>

									<li><a href="/maker/home">프로젝트 등록</a></li>
									<li class="dropdown">
										<a href="services.html" class="dropdown-toggle" data-toggle="dropdown">카테고리 <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="/board/categoryTech">테크/가전</a></li>
											<li><a href="/board/categoryBeauty">뷰티</a></li>
											<li><a href="/board/categoryFood">푸드</a></li>
											<li><a href="/board/categoryCulture">문화</a></li>
											<li><a href="/board/categoryDonate">기부/후원</a></li>
											<li class="divider"></li>			
										</ul>
									</li>
									<li><a href="/member/mypageMain">마이페이지</a></li>
									<li><a href="/manager/mainPage">관리자페이지</a></li>
								</ul>
							</nav>
						</div>
					</nav>
					<!-- // 메뉴 -->
					<div class="search">
						<div class="cd-main-header">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul>
							
						</div>
						<!-- 검색 -->
						<div id="cd-search" class="cd-search">
							<form action="#" method="post">
								<input name="Search" type="search" placeholder="검색어를 입력해주세요.">
							</form>
						</div>
						<!-- // 검색 -->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--//top-bar-w3-agile-->
	

	
	<br/>
	
</div>



