<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	
	#menu {
		text-align: center;
	}
	
	#page {
		text-align: center;
		border-style: solid;
		border-color: #F2F2F2;
	}
	
</style>
<title>관리자페이지</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
			
<!-- 			타이틀 -->

				<div class="col-md-12">
					<h1 style="text-align: center;">관리자페이지</h1>		
					<hr>		
				</div>
				
<!-- 			// 타이틀 -->

			</div>
			<div class="row">
			
<!-- 			메뉴 -->

				<div id="menu" class="col-md-3">
					<hr>
					<a src="">회원관리</a><br><hr><br>				
					<a src="">프로젝트 관리</a><br><hr><br>					
					<a src="">문의사항</a>
					<hr>						
				</div>
				
<!-- 			// 메뉴 -->
<!-- 			페이지 -->

				<div id="page" class="col-md-9">
					<h1>인크루드 부분</h1>
<%-- 					<%@ include file="" %> --%>
				</div>
				
<!-- 			// 페이지 -->

			</div>
		</div>
	</div>
</div>
</body>
</html>