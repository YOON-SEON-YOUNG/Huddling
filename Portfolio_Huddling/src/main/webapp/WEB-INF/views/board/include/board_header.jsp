<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Free Board</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <!-- Bootstrap 3.3.4 -->
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<body>
<!-- 로고, 검색, 로그인, 카테고리 -->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4" align="center">
			<a href="/">
				<img src="/resources/images/hudling_logo.jpg" style="width:250px; height: 125px; ">
			</a>
		</div>
			
		<!-- 검색기능 -->
		<div class="col-md-4" align="right">
			<br/>
			<br/>
	        <form class="navbar-form" role="search" action="#" id="searchForm" >
		        <div class="input-group">
		            <input type="text" name="keyword"  value=""  class="form-control" 
		            		placeholder="어떤 프로젝트를 찾고 계신가요?"
		            		style="width: 300px;"/>
		            <div class="input-group-btn">
		                <button class="btn btn-default" type="submit">
		                	<i class="glyphicon glyphicon-search"></i>
		                </button>
		            </div>
		        </div>
	        </form>
	    </div> <!-- /.검색기능 -->
			
		<div class="col-md-4" align="center">
			<br/>
			<br/>
<!-- 				<a href="manager/mainPage">회원 로그인</a> -->
			<button type="button" class="btn btn-warning" onClick="#">
				로그인/회원가입
			</button>
			<button type="button" class="btn btn-primary" onClick="location.href='maker/home'">
				펀딩오픈 신청하기
			</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="/manager/mainPage">관리자페이지</a>
		</div>
	</div>
	
	<br/>
	<br/>
	
	<!-- 카테고리 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" align="center">
			<a href="/">
				<button class="btn btn-success" type="button">
					전체 테마
				</button>
			</a>
			<a href="/board/categoryTech">
				<button class="btn btn-secondary" type="button">
					테크/가전
				</button> 
			</a>
			<a href="/board/categoryBeauty">
				<button class="btn btn-secondary" type="button">
					패션/뷰티
				</button> 
			</a>
			<a href="/board/categoryFood">
				<button class="btn btn-secondary" type="button">
					푸드
				</button> 
			</a>
			<a href="/board/categoryCulture">
				<button class="btn btn-secondary" type="button">
					문화
				</button>
			</a>
			<a href="/board/categoryDonate">
				<button class="btn btn-secondary" type="button">
					기부/후원
				</button>
			</a>
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- /.row 카테고리 -->
	
	<br/>
	<br/>
	<br/>
	
</div>

