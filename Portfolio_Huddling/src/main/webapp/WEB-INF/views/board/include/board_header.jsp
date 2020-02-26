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


<link href="/resources/main/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<link href="/resources/main/css/easy-responsive-tabs.css"
	rel='stylesheet' type='text/css' />
<link href="/resources/main/css/style.css" rel='stylesheet'
	type='text/css' />
<link href="/resources/main/css/font-awesome.css" rel="stylesheet">

</head>

<!-- js -->
<script type="text/javascript"
	src="/resources/main/js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<!--search-bar-->
<script src="/resources/main/js/main.js"></script>
<!--//search-bar-->
<script>
	$('ul.dropdown-menu li').hover(
			function() {
				$(this).find('.dropdown-menu').stop(true, true).delay(200)
						.fadeIn(500);
			},
			function() {
				$(this).find('.dropdown-menu').stop(true, true).delay(200)
						.fadeOut(500);
			});
</script>




<a href="#" id="toTop" style="display: block;"> <span
	id="toTopHover" style="opacity: 1;"> </span></a>
<script type="text/javascript"
	src="/resources/main/js/bootstrap-3.1.1.min.js"></script>
<!-- <form action="/member/sendInquiry" method="get"> -->
<!-- <input type="hidden" name="inquiry" id="inquiry" value="1"> -->
<!-- <input type="hidden" name="project_name" id="project_name" value="project_name"> -->
<!-- <input type="hidden" name="receiver" id="receiver" value="작성자"> -->
<!-- <button type="submit" class="btn btn-outline-secondary" -->
<!-- 								style="width: 392px;">창작자에게 문의하기</button> -->
<!-- </form> -->
<style>
.top-logo_info_w3layouts {
	margin: 10 auto;
	text-align: center;
	width: 100%; 
 	padding: 2em 0; 
}
.dropdown-divid{
height:0;margin:.5rem 0;overflow:hidden;border-top:1px solid #e9ecef}
.dropdown-items:active{color:#fff;text-decoration:none;background-color:#007bff}
.dropdown-items:disabled{color:#6c757d;background-color:transparent}


.user-box{display:flex;padding:.25rem 1rem}
.user-box .u-img{width:80px}.user-box 
.u-img img{width:100%;border-radius:5px}.user-box 
.u-text{padding:0 10px}.user-box 
.u-text h4{margin-bottom:0;font-size:18px}
.user-box .u-text 
.text-muted{font-size:13px;margin-bottom:5px}
.navbar-header .dropdown-toggle2::after {
    vertical-align: middle;
    color: #555;
}
.navbar-header .dropdown-toggle2::after {
    margin-left: 0;
}
.dropdown-toggle2::after {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: .255em;
    vertical-align: .255em;
    content: "";
    border-top: .3em solid;
    border-right: .3em solid transparent;
    border-bottom: 0;
    border-left: .3em solid transparent;
    }

/* /*     Navbar     */
.navbar .navbar-nav .nav-item .nav-link {
  display: inline-block;
  vertical-align: middle;
  color: #666;
  line-height: 55px;
  letter-spacing: 0.04em;
  padding: 0 20px 0 0;
  position: relative;
  font-size: 14px;
  font-weight: 500;
  text-align: center;
}
.navbar .navbar-nav .nav-item .nav-link i {
  font-size: 22px;
  width: 30px;
  vertical-align: middle;
}

.navbar-expand-lg .navbar-nav .dropdown-menu {
  left: auto;
  right: 0;
}

.dropdown-items {
  font-size: 14px;
}

.navbar .navbar-nav .notification {
  position: absolute;
  background-color: #ff646d;
  text-align: center;
  border-radius: 10px;
  min-width: 17px;
  height: 17px;
  font-size: 11px;
  color: #ffffff;
  font-weight: bold;
  line-height: 17px;
  top: 11px;
  right: 12px;
}

.navbar-header {
  padding: 0px 15px;
}
.navbar-header .dropdown-toggle2 {
  line-height: 55px;
}
.navbar-header .dropdown-toggle2::after {
  margin-left: 0;
}

.profile-pic:hover, .profile-pic:focus {
  text-decoration: none;
}

.navbar-header .dropdown-toggle2::after {
  vertical-align: middle;
  color: #555;
}

.hidden-caret .dropdown-toggle2::after {
  display: none !important;
}

.profile-pic .img-circle {
  border-radius: 50%;
}
.profile-pic span {
  font-size: 14px;
  font-weight: 600;
  padding: 0 10px;
  color: #555; */
}

/*-- //navigation --*/
.agileinfo_search{
	float: right;
    width: 25%;
    border-bottom: 1px solid #999;
    margin-top: .6em;
}
.agileinfo_search input[type="text"]{
    outline: none;
    width: 87%;
    background: #fff;
    color: #212121;
    padding: 10px;
    font-size: 14px;
    border: none;
	letter-spacing: 1px;
}
.agileinfo_search input[type="submit"] {
    outline: none;
    width: 10%;
    background: url(/resources/images/search.png) no-repeat;
    border: none;
    padding: 3px 0;
}


</style>
<body>

	<!--Header-->
	<div class="header" id="home">
	<div id="member_id" style="display:none;" >${memberVo.member_id}</div>
	<div id="manager" name="manager" style="display:none;" ></div>
		<!--top-bar-w3-agile-->
	
			<div class="top-logo_info_w3layouts">
				<div class="col-md-3 logo">
					<h1><a class="navbar-brand" href="/"><img src="/resources/images/hudling_logo.jpg" 
					style="width:250px; height:125px;"></a></h1>
				</div>

		<!-- 검색 -->
					<div class="col-xs-4 agileinfo_search">
					<form action="#" method="post">
					<!-- 	<input type="image" value="submit" src="/resources/images/search.png" name="submit"> -->
						<input type="submit" value=" ">
						<input type="text" name="Search" placeholder="어떤 프로젝트를 찾고 계신가요?" required="">
					</form>
				</div>	
				

			
						<!-- 로그인, 회원가입 -->	
						
							
					<ul class="top-right-info_w3ls">
					<c:choose>
				<c:when test="${not empty memberVo}">
				
					<li class="nav-item dropdown">
								<a class="dropdown-toggle2 profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="/member/displayFile?fileName=${profileVo.profile_pic}" alt="user-img" width="36" class="img-circle"><span>${memberVo.member_nickname}님</span></a>
								<ul class="dropdown-menu dropdown-user">
									<li>
										<div class="user-box">
											<div class="u-img"><img src="/member/displayFile?fileName=${profileVo.profile_pic}" alt="user"></div>
											<div class="u-text">
												<h4>${memberVo.member_nickname}님</h4>
												<p class="text-muted">hello@themekita.com</p><a class="btn btn-rounded btn-danger btn-sm" onClick="location.href='/member/mypageMain'">My Page</a></div>
											</div>
										</li>
										<div class="dropdown-divid"></div>
										<a class="dropdown-items" href="#"><i class="ti-user"></i> My Profile</a>
										<br>
										<a class="dropdown-items" href="#"></i> My Balance</a>
										<br>
										<a class="dropdown-items" href="#"><i class="ti-email"></i> Inbox</a>
										<br>
										<div class="dropdown-divid"></div>
										<a class="dropdown-items" href="#"><i class="ti-settings"></i> Account Setting</a>
										<div class="dropdown-divid"></div>
										<a class="dropdown-items" href="/member/logout"><i class="fa fa-power-off"></i> Logout</a>
									</ul>
									<!-- /.dropdown-user -->
								</li>
				   <%--   <img src="/member/displayFile?fileName=${profileVo.profile_pic}" class="img-circle" width="50" height="50" alt="User Image"/>
					<span>${memberVo.member_nickname}님 반갑습니다.</span>							
					<input type="button" id="logout" value="로그아웃" onclick="location.href='/member/logout'"> --%>
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

			<div class="header-nav">
				<div class="inner-nav_wthree_agileits">
					<nav class="navbar navbar-default">			
						<!-- 메뉴 -->
						<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
							<nav>
								<ul class="nav navbar-nav">
									<li><a href="/" class="active">Home</a></li>

									<li><a href="/maker/intro">프로젝트 등록</a></li>
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
<!-- 									href="/member/mypageMain" -->
									<c:choose>
										<c:when test="${not empty memberVo && memberVo.member_id != 'manager'}">
											<li><a  href="/member/mypageMain"id="mypage">마이페이지</a></li>
										<li><a href="/manager/inquiry">관리자에게문의</a></li>
										</c:when>
										
										<c:when test="${not empty memberVo && memberVo.member_id == 'manager' }">
											<li><a href="/manager/mainPage" id="managerPage">관리자페이지</a></li>
										</c:when>
									</c:choose>
					</ul>	
							</nav>
						</div>
					</nav>			
				</div>
			</div>
		</div>
		<!--//top-bar-w3-agile-->
		<div class="clearfix"></div>

	



