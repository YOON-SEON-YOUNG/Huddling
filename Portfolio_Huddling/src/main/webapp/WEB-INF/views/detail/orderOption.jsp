<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8" session="false"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Style CSS -->
<link href="<c:url value="/resources/css/option_style.css"/>" rel="stylesheet">


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>


<script>

// 수량

$(document).on('click', '.number-spinner button', function () {    
	var btn = $(this),
		oldValue = btn.closest('.number-spinner').find('input').val().trim(),
		newVal = 0;
	
	if (btn.attr('data-dir') == 'up') {
		newVal = parseInt(oldValue) + 1;
	} else {
		if (oldValue > 1) {
			newVal = parseInt(oldValue) - 1;
		} else {
			newVal = 1;
		}
	}
	btn.closest('.number-spinner').find('input').val(newVal);
});

//새 창 띄우기

function funding_click() {
	var url ="../detail/orderPage";
	window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=600")
};

</script>


<body>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">


			<!-- 주문 옵션 -->

			<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-8 col-sm-7 col-xs-12">
							<div class="box">
							<!-- 펀딩 상품 타이틀 -->
								<h4>카테고리</h4>
								<h2 class="box-title">'어른친구' 만드는 세대공감 보드게임</h2>
								<hr>			
								<div class="plan-selection">
								<!-- 옵션 선택 -->
									<div class="plan-data">		
										<input id="question1" name="question" type="radio"
											class="with-font" value="sel" /> 
										<label for="question1">50,000원이상</label>
										<p class="plan-text">리워드 내역 : 마인도어 보드게임 1세트 | 예상일 : 2020.02.12 
										<br> 76명 참여 | 선착순 남은 수량 15개</p>
										<!-- 옵션 수량 -->	
										<div class="plan-price2" style="width:300px">
										
											<div class="col-xs-3 col-xs-offset-3">
												<div class="input-group number-spinner">
													<span class="input-group-btn">
														<button class="btn btn-default" data-dir="dwn">
															<span class="glyphicon glyphicon-minus"></span>
														</button>
													</span> 
													<input type="text" class="form-control text-center "value="1" style="width:100px"> 
													<span class="input-group-btn">
														<button class="btn btn-default" data-dir="up">
															<span class="glyphicon glyphicon-plus"></span>
														</button>
													</span>
												</div>
											</div>
										</div>
								<!-- 옵션에 따른 펀딩 금액 -->			
										<span class="plan-price">50,000원</span>
									</div>
								</div>
								
								<div class="plan-selection">
									<div class="plan-data">
										<input id="question2" name="question" type="radio"
											class="with-font" value="sel" /> <label for="question2">84,000원
											이상</label>
										<p class="plan-text">리워드 내역 : 마인도어 보드게임 2세트 | 예상일 :
											2020.02.12</p>
										<div class="plan-price2">
											<input type="number" id="qty_input"
												class="form-control form-control-sm" value="1" min="1">
										</div>
										<span class="plan-price">84,000원</span>
									</div>
								</div>
								<div class="plan-selection">
									<div class="plan-data">
										<input id="question3" name="question" type="radio"
											class="with-font" value="sel" /> <label for="question3">120,000원
											이상</label>
										<p class="plan-text">리워드 내역 : 마인도어 보드게임 3세트 | 예상일 :
											2020.02.12</p>
										<div class="plan-price2">
											<input type="number" id="qty_input"
												class="form-control form-control-sm" value="1" min="1">
										</div>
										<span class="plan-price">120,000원</span>
									</div>
								</div>
							</div>
							
							<!-- 주문 총 가격 -->
							<div class="widget">
								<div class="plan-selection">
									<div class="plan-data">
										<div class="summary-head">
											<h5 class="summary-title">Total</h5>
										</div>
										
										<!-- 총 금액 -->
										<div class="summary-price">
											<p class="summary-text">50,000원</p>
										</div>
										
									</div>
								</div>
							</div>
							<a href="#" class="btn btn-primary btn-lg mb30" onclick="funding_click()">펀딩 참여하기</a>
						</div>
					</div>
				</div>
			</div> <!-- 주문 옵션 끝 -->
			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>