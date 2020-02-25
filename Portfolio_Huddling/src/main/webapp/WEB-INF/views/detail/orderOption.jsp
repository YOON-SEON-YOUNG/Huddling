<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8" session="false"%>
<%@ include file="../board/include/board_header.jsp"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="<c:url value="/resources/main/css/bootstrap.min.css"/>" rel="stylesheet"> 
<!-- Style CSS -->
<link href="<c:url value="/resources/css/option_style.css"/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>



</head>

<body onload="init();">
<script>



var sell_price;
var amount;

function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;

	sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value = parseInt(hm.value) * sell_price;
}  

</script>



<script type="text/javascript">

function CheckBox(frm) {
	    if (!frm.CheckThis.checked)
	      frm.CheckThis.focus()
	  }

//결제완료 창 띄우기

function funding_click() {
	var url ="../detail/orderPage";
	window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=600")
};

</script>



<form name="form" method="get">
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
								
								

								<!-- 옵션 선택(라디오 버튼) -->
									<div class="plan-data">	
										
											<input id="question1" name="CheckThis" type="checkbox"
											class="with-font" value="50000" onClick="this.form.total.value=CheckChoice(this);">																					
											<label for="question1">50,000원이상</label>		
											
										<p class="plan-text">리워드 내역 : 마인도어 보드게임 1세트 | 예상일 : 2020.02.12 
										<br> 76명 참여 | 선착순 남은 수량 15개</p>																																			
										<!-- 옵션 수량 -->	
										<div class="plan-price2" style="width:300px; bottom:5px">
										
											<div class="col-xs-3 col-xs-offset-3">
												<div class="input-group number-spinner">
							
												<input type=hidden name="sell_price" value="50000">
												<input type="button" value=" - " style="width:30px;" onclick="del();"><br>
												<input type="text" name="amount" value="1" class="form-control text-center style="width:100px" onchange="change();">
												<input type="button" value=" + " style="width:30px" onclick="add();"><br>
												</div>
											</div>
										</div>
								<!-- 옵션에 따른 펀딩 금액 -->			
										<span class="plan-price">
										<input type="text" name="sum" size="11" style="width:100px" readonly>원
										</span>												
								
											
									</div>
								</div>
																				
								<div class="plan-selection">
							<div class="plan-data">	
																			
									<input id="question2" name="fooby[1][]" type="checkbox"
											class="with-font" value="84000" onClick="this.form.total.value=CheckChoice(this);">	
											<label for="question2">84,000원 이상</label>
											
										<p class="plan-text">리워드 내역 : 마인도어 보드게임 2세트 | 예상일 :
											2020.02.12</p>
										<div class="plan-price2" style="width:300px">
										
											<div class="col-xs-3 col-xs-offset-3">
												<div class="input-group number-spinner">
													
													<input type="text" class="form-control text-center "value="1" style="width:100px"> 
													
												</div>
											</div>
										</div>
								<span class="plan-price">84,000원</span>
										
									</div>
								</div>
								<div class="plan-selection">
									<div class="plan-data">
									<input id="question3" name="fooby[1][]" type="checkbox"
											class="with-font" value="120000" onClick="this.form.total.value=CheckChoice(this);">	
											<label for="question3">120,000원 이상</label>
										<p class="plan-text">리워드 내역 : 마인도어 보드게임 3세트 | 예상일 :
											2020.02.12</p>
										<div class="plan-price2" style="width:300px">
										
											<div class="col-xs-3 col-xs-offset-3">
												<div class="input-group number-spinner">
												
													<input type="text" class="form-control text-center "value="1" style="width:100px"> 
											
												</div>
											</div>
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
											<span class="plan-price">
										<input type=hidden name=hiddentotal value=0>
											<input type=hidden name=hiddenpriorradio value=0>
											총 금액은 : <input type=text name=total style="width:100px" readonly> <!-- 입니다 -->
											</span> 
								
								
							
										</div>
										
									</div>
								</div>
							</div>
							<a href="#" class="btn btn-primary btn-lg mb30" onclick="funding_click()">펀딩 참여하기</a>
							<input type="button" value="확인" class="btn btn-primary btn-lg mb50" onclick="checkRadio();"/>	
							
						</div>
					</div>
				</div>
			</div> <!-- 주문 옵션 끝 -->
			<div class="col-md-2"></div>
		</div>

</form>
</body>
</html>
<%@ include file="../board/include/board_footer.jsp"%>