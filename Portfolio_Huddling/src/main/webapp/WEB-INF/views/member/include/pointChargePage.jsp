<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/main/css/bootstrap.min.css"/>" rel="stylesheet"> 
<!-- Style CSS -->
<link href="/resources/css/popup.css" rel="stylesheet">

<title>Insert title here</title>

</head>
<style>


div, ul, li, ol, dd, input {
	border: 0;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	color: black;
	outline: none;
	font-family: dotum,sans-serif;
	font-size: 12px;
	font-weight: normal;
	color: #333333;
	vertical-align: top;
}

body, h1, h2, h3, h4, th, td, input, select {
	color: black;
	font-size: 12px;
}
body {
	margin: 0;
	padding: 0;
}
.blackbg_gra {
	clear: both;
	width: 100%;
	height: 100%;
	min-height: 1700px;
	margin: 0 auto;
	text-align: center;
	position: absolute;
	top: 0px;
	left: 0px;
	z-index: 1000;
	background: url('./images/popup/bg_gra.png') repeat;
}
.popup_flat {
	width: 520px;
	height: auto;
	margin: 0 auto;
	background-color: #f0f0f0;
	padding: 0;
	margin-top: 180px;
	text-align: center;
	padding-bottom: 20px;
}
.pop_top {
	clear: both;
	width: 100%;
	height: 36px;
	background: url('./images/popup/view_top_bg.jpg') repeat-x;
	position: relative;
}
.charge_bg {
	width: 466px;
	height: 191px;
	margin: 0 auto;
	background: url('./images/popup/popup_charge_bg.jpg') no-repeat;
	position: relative;
	margin-bottom: 10px;
}
.popup_tb {
	width: 100%;
	margin: 0 auto;
	background-color: #fff;
	padding-bottom: 10px;
}
.popup_tb .flat_tit {
	width: 90%;
	margin: 0 auto;
	text-align: left;
	padding-top: 20px;
	margin-bottom: 10px;
}
.pbtn_flat {
	width: 100%;
	margin: 0 auto;
	margin-top: 0px;
}
.pbtn_flat_s {
	overflow: hidden;
	margin: 0 auto;
	text-align: center;
	margin-left: 33px;
}
.pbtn_flat_s ul {
	overflow: hidden;
	list-style: none;
	float: left;
	margin: 0;
	padding: 0;
	margin-bottom: 5px;
}
li {
	list-style: none;
}
.mar_rig10 {
	margin-right: 10px;
}
.pbtn_flat_s ul li {
	float: left;
	margin-bottom: 5px;
}
a {
	text-decoration: none;
	outline: none;
	cursor: pointer;
	color: #333333;
}
.pbtn_flat_s ul li a {
	background: url('/resources/images/btn/btn_charge_popup_150708.png') no-repeat;
}
.pbtn_flat_s ul li a {
	display: block;
}
.pbtn_flat_s .m18 a {
	width: 146px;
	height: 42px;
	background-position: 0px -1092px;
}
.pbtn_flat_s ul li a span {
	display: none;
}
.pbtn_flat_s .m17 a {
	width: 146px;
	height: 42px;
	background-position: 0px -832px;
}
.pbtn_flat_s .m12 a {
	width: 146px;
	height: 42px;
	background-position: 0px -572px;
}
.pbtn_flat_s .m11 a {
	width: 146px;
	height: 42px;
	background-position: 0px -520px;
}
.pbtn_flat_s .m10 a {
	width: 146px;
	height: 42px;
	background-position: 0px -468px;
}
.pbtn_flat_s .m14 a {
	width: 146px;
	height: 42px;
	background-position: 0px -676px;
}
.pbtn_flat_s .m8 a {
	width: 146px;
	height: 42px;
	background-position: 0px -364px;
}
.pbtn_flat_s .m4 a {
	width: 146px;
	height: 42px;
	background-position: 0px -156px;
}
.pbtn_flat_s .m7 a {
	width: 146px;
	height: 42px;
	background-position: 0px -312px;
}
.pbtn_flat_s .m6 a {
	width: 146px;
	height: 42px;
	background-position: 0px -260px;
}
.pbtn_flat_s .m5 a {
	width: 146px;
	height: 42px;
	background-position: 0px -208px;
}
.pbtn_flat_s .m3 a {
	width: 146px;
	height: 42px;
	background-position: 0px -104px;
}
.pbtn_flat_s .m1 a {
	width: 146px;
	height: 42px;
	background-position: 0px 0px;
}
img {
	border: 0;
}
.charge_bg .charge_bg_s {
	width: 100%;
	margin: 0 auto;
	padding-top: 100px;
	margin-top: 20px;
}
.charge_bg .charge_bg_s li {
	width: 340px;
	float: left;
	list-style: none;
	display: block;
	height: 18px;
	line-height: 15px;
	margin-bottom: 3px;
	text-align: left;
	margin-left: 45px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	font-size: 13px;
	letter-spacing: -0.5px;
}
.bold {
	font-weight: bold;
}
.pop_top li {
	list-style: none;
}
.pop_top .pop_logo {
	height: 36px;
	background: url('/resources/images/popup/view_top_tit.gif') no-repeat;
	cursor: pointer;
	float: left;
	margin-left: 10px;
	padding-left: 100px;
}
.btn_close {
	width: 23px;
	height: 22px;
	background: url('/resources/images/popup/popup_btn_close.png') no-repeat;
	cursor: pointer;
	float: right;
	margin-right: 20px;
	margin-top: 6px;
}
.pop_logo .pop_name {
	float: left;
	height: 36px;
	font-size: 13px;
	color: #fff;
	font-weight: bold;
	text-shadow: 1px 1px 0px 0px #7a9b17;
	margin-top: 13px;
	letter-spacing: -0.5px;
}
</style>
<body>
<div id="charge_layer">
	<div class="blackbg_gra ">
		<div class="popup_flat" id="ch_evt">
			<div class="pop_top">
				<li class="pop_logo"><div class="pop_name">포인트 충전소</div></li>
				<li class="btn_close" onclick="charge_layer_close();"></li>
			</div>
			<div class="charge_bg">
				<div class="charge_bg_s">
				<li>결제금액 :<span class="bold "><span id="price_info_layer">17,600</span> 원</span> </li>
				<li>선택상품 :<span class="bold "><span id="point_info_layer">20,000</span> 포인트</span></li>
				</div>
			</div>		
			<div class="flat_line"></div>						
			<div class="popup_tb">
				<div class="flat_tit"><img src=""></div>

			</div><!--popup_tb end!-->
		</div><!--popup_flat end!-->
	</div><!--blackbg_gra end!-->
</div>	

</body>
</html>