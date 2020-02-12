<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
	$("#page").load("myPageSupportControl");
	$("#item1").click(function(){
		$("#page").load("myPageSupportControl");
	});
	$("#item2").click(function(){
		$("#page").load("myPageReadListControl");
	});
	$("#item3").click(function(){
		$("#page").load("myPageQuestionControl");
	});
	$("#item4").click(function(){
		$("#page").load("myPageChaetingControl");
	});
	$("#item5").click(function(){
		$("#page").load("myPagePointControl");
	});
	
});
</script>	
<style>
#spanRight {
	text-align: right;
}

#charge {
	text-align: center;
	font-size: 5px;
}
label{
	font-size:15px;
	margin-right:350px;
	
}
#chargeRead {
	text-align: center;
}
</style>
<title>MyPage</title>
</head>
<body>
<!-- 맨위쪽(header) -->
	<header>
		<nav id="navbar-example2" class="navbar navbar-light bg-light"
			style="padding: 10px;">
			<a class="navbar-brand" href="#" style="margin-right:1500px ">마이페이지</a>
			
			<ul class="nav nav-pills">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false"><img
						class="rounded-circle"></img></a>
					<div class="dropdown-menu" style="margin-left: -120px">
						<a class="dropdown-item" href="#" >로그아웃</a>
					</div></li>
			</ul>
		</nav>
		<a href="/">홈으로</a>
	</header>
	<!-- //header -->
	
	<div class="container-fluid">
	<!-- 왼쪽부분 -->
		<div class="row">
			<div class="col-md-12">
			
			
				<div class="row">
					<!-- 왼쪽 -->
					<div class="col-md-3" id="myPageMenu">
						<div id="list-example" class="list-group">
							<a class="list-group-item list-group-item-action"
								 id="item1">내가후원한프로젝트</a> 
								 <a
								class="list-group-item list-group-item-action"
								 id="item2">내가등록한프로젝트</a> 
								 <a
								class="list-group-item list-group-item-action"
								 id="item3">문의내역</a> 
								 <a
								class="list-group-item list-group-item-action"
								 id="item4">받은문의내역</a> 
								 <a
								class="list-group-item list-group-item-action"
								id="item5">포인트내역</a>
						</div>
					</div>
					<!-- //왼쪽 -->
					
					<!-- 오른쪽 -->
					<div id="page" class="col-md-9 card card-body">
					<div data-target="#list-example" data-offset="0"
							class="scrollspy-example">
					
					</div>
					</div>
					<!-- //오른쪽 -->
			<!-- 페이지 -->
					
	</div>
	</div>
	</div>
	</div>
</body>

</html>