<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8" session="false"%>
<%@ include file="../board/include/board_header.jsp"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">

s
<!-- Style CSS -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<script type="text/JavaScript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/JavaScript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>

    // CSS의 position 속성을 이용하여 두개의 DIV 레이아웃을 겹친다.

    .u.i-progressbar { position:relative; }
    .progress-label {
        position:absolute;
        left:50%;
        top:8px;
        font-weight:bold;
        margin-left:-40px;
    }
</style>

<script>
jQuery(document).ready(function() {
    var barProgress = jQuery(".progressbar");
    // value 값의 숫자를 입력함으로서 내용을 채울 수 있다.      
    barProgress.eq(0).progressbar({value:75});
    barProgress.eq(0).find(".ui-progressbar-value").css({"background":"#FFCC66"});
   
});
</script>


<script>
$(document).ready(function() {
	var num = ${num};
	$.get("/detail/getDetail/" + num,function(data){
		console.log("data",data);
		$('#p_category').text(data.project_category);
		$('#p_title').text(data.project_name);
		$('#product_story').html(data.story_storyboard);
		$('#imgs').attr('src','/upload/imgView?fileName=' + data.story_introimg);
	});
	
	$("#page").load("/detail/tapInfo");
	
	$("#tapInfo").click(function(e) {
		console.log("tapInfo 클릭됨");
 		e.preventDefault();
		$("#page").empty(); 
		$("#page").load("/detail/tapInfo");
		
	});
	$("#tapComment").click(function(e) {
		console.log("tapComment 클릭됨");
 		e.preventDefault();
		$("#page").empty(); 
		$("#page").load("/detail/tapComment");
	});
	$("#tapReview").click(function(e) {
		console.log("tapReview 클릭됨")
 		e.preventDefault();
		$("#page").empty(); 
		$("#page").load("/detail/tapReview")
	});
	
});

</script>

<!-- 펀딩 타이틀 -->
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="page-header" style="text-align: center;">
			<!-- 카테고리 -->
			<h4 class="reviews" id="p_category">카테고리</h4>
			<!--  타이틀 -->
			<h2 class="reviews" id="p_title">'어른친구' 만드는 세대공감 보드게임</h2>
		</div>
	</div>
	<div class="col-md-2"></div>
</div>
<!-- // 펀딩 타이틀 -->
	
<div class="card card-body h-100">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-8">
			<!-- 대표이미지 -->
					<div id="accordion" class="checkout">
						<img id= "imgs" src="" width="830" height="600" />
					</div>
			<!--  // 대표 이미지 -->




					<!-- 탭 메뉴 -->
					<div id="menu" class="comment-tabs">
						<ul class="nav nav-tabs" role="tablist">

							<!-- tab1. 프로젝트 소개 -->
							<li class="active"><a id="tapInfo" role="tab"
								data-toggle="tab">
									<h4 class="reviews text-capitalize">프로젝트 소개</h4>
							</a></li>

							<!-- tab2. 참여 내역 -->
							<li><a id="tapComment" role="tab" data-toggle="tab">
									<h4 class="reviews text-capitalize">참여내역</h4>
							</a></li>

							<!-- tab3. 후기 -->
							<li><a id="tapReview" role="tab" data-toggle="tab">
									<h4 class="reviews text-capitalize">후기</h4>
							</a></li>
						</ul>
					</div>

					<!-- tap 내용 -->
					<div id="page" class="col-md-12"></div>
					<!-- // tap 내용 끝 -->

				</div>

				<div class="col-md-4">
					<div id="accordion" class="checkout">
						<div class="panel checkout-step">

							<!-- 펀딩 현황 -->
							<div class="card card-body">
								<!-- 펀딩 달성률 -->
								<h1>75%</h1>
								<div class="progressbar">
									<div class="progress-label"></div>
								</div>
								<!-- 펀딩 달성 금액 -->
								<h4>모인 금액</h4>
								<h2>2,363,000원</h2>
								<br>
								<!-- 남은 시간 -->
								<h4>남은 시간</h4>
								<h2>3일</h2>
								<br>
								<!--  후원자 -->
								<h4>후원자</h4>
								<h2>53명</h2>
								<hr>
								<!--  펀딩 결제 안내 -->
<!-- 								<p> -->
<!-- 									<strong>결제방법 안내</strong><br> 목표 100% 달성시에만 결제 추가 안내<br> -->
<!-- 									100%달성 후에는 아래 지정일에 결제 진행<br> <br> <strong>결제예정일</strong><br> -->
<!-- 									2020년 2월 10일 (1차),<br> 2020년 2월 24일 (2차),<br> 2020년 -->
<!-- 									3월 2일 (3차),<br> 2020년 3월 12일 (4차) -->
<!-- 								</p> -->

								<!-- 펀딩 참여하기로 이동 -->
								<a href="../detail/orderOption">
									<button type="button" class="btn btn-md active btn-primary"
										id="btnAttend">펀딩 참여하기</button>
								</a>


							</div>
						</div>
						<!-- 창작자 소개 -->
						<div id="accordion" class="checkout">
						<h5>창작자 소개</h5>
						<br>
						상상을 따라 모험을 즐기는 그림작가 김경희입니다. 
						현실과 상상의 경계를 지우는 작업을 좋아하며, 
						창작물을 통해 여유롭고 유쾌한 시선을 전하고 싶습니다
						<hr>
							<button type="button" class="btn btn-outline-secondary"
								style="width: 392px;" data-creator="">창작자에게 문의하기</button>
								
						</div>
						
					</div>


					<!-- 펀딩 리워드 항목 -->
					<div id="accordion" class="checkout">
						<!-- 리워드 1 -->
						<c:forEach var="rewordDto" items="${reword}" varStatus="stat">
						<div class="panel checkout-step">
						<c:choose>
						<c:when test="${stat.count eq 1 }">
							<div>
						</c:when>
						<c:otherwise>
						<div role="tab" id="heading${stat.count}">
						</c:otherwise>
						</c:choose>
								<span class="checkout-step-number">${stat.count }</span>
								<!-- 리워드 타이틀 -->
								<h4 class="checkout-step-title">
									<a role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapse${stat.count }"><span class='rewordPrice'>${rewordDto.temp_reword_price }원</span> </a>
								</h4>
							</div>

							<!-- 리워드 내용 1 -->
							<div class="collapse in rewordList">
							<c:choose>
							<c:when test="${stat.count ne 1 }">
							<div id="collapse${stat.count }" class="panel-collapse collapse">
							</c:when>
							</c:choose>
								<div class="checkout-step-body" style="padding: 0px">
									<hr>
									${rewordDto.temp_reword_name }
									<hr>
									<br> <p>배송비</p><span style="text-align:right;">${rewordDto.temp_reword_trans_price }</span>원
									<br> <p>발송예상일</p> ${rewordDto.temp_reword_trans_month }/${rewordDto.temp_reword_trans_days } 예상
									<hr>
									<button type="button" class="btn btn-default btn-circle">
										<i class="glyphicon glyphicon-ok"></i>
									</button>
									&nbsp;36명 참여&nbsp;&nbsp;64개 남음
								</div>
							</div>
						</div>
						</c:forEach>

					</div>
				</div>
			</div>

		</div>

		<div class="col-md-2"></div>
	</div>
</div>

</head>
<%@ include file="../board/include/board_footer.jsp"%>