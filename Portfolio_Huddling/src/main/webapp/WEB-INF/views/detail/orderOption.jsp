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

//결제완료 창 띄우기

function funding_click() {
	var url ="../detail/orderPage";
	window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=600")
};


/* 
  function checkRadio()
{
   
   var check = false;
   var i = 0;
   for( i = 0; i < document.getElementsByName("option").length; ++i )
   {
       if ( document.getElementsByName("option")[i].checked == true )
       { 
           check = true;
           break;
        }
     }
	
     if( check == false )
     { 
         alert( "옵션을 선택하세요");
      } else
      {
          alert( document.getElementsByName("option")[i].value + "를 선택하셨습니다 ");
      }
    return;	 
}
 */

 // radio 선택된 값 가져오기

 function test_sample() {
	var sample = document.getElementsByName('option');
		for(var i=0; i<sample.length; i++){
			if(sample[i].checked == true){
				alert(sample[i].value);
			}
		}
	
} 

 function CheckChoice(whichbox) {
		with (whichbox.form) {
			if (whichbox.type == "radio") {
				hiddentotal.value = eval(hiddentotal.value) - eval(hiddenpriorradio.value);
				hiddenpriorradio.value = eval(whichbox.price);
				hiddentotal.value = eval(hiddentotal.value) + eval(whichbox.price);
			}
			else {
				if (whichbox.checked == false) {
					hiddentotal.value = eval(hiddentotal.value) - eval(whichbox.value);
				}
				else {
					hiddentotal.value = eval(hiddentotal.value) + eval(whichbox.value);
				}
			}
			if (hiddentotal.value < 0) {
				InitForm();
			}
			return(formatCurrency(hiddentotal.value));
	   }
	}
	function formatCurrency(num) {
		num = num.toString().replace(/\$|\,/g,'');
			if(isNaN(num)) num = "0";
				cents = Math.floor((num*100+0.5)%100);
				num = Math.floor((num*100+0.5)/100).toString();
			if(cents < 10) cents = "0" + cents;
				for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
					num = num.substring(0,num.length-(4*i+3))+','+num.substring(num.length-(4*i+3));
				return (num + "원");
				}

	function InitForm() {
		document.myform.total.value='0원';
		document.myform.hiddentotal.value=0;
		document.myform.hiddenpriorradio.value=0;

		for (xx=0; xx < document.myform.elements.length; xx++) {
			if (document.myform.elements[xx].type == 'checkbox' | document.myform.elements[xx].type == 'radio') {
				document.myform.elements[xx].checked = false;
		   }
		}
	}

/* 
var checked_radio = $('input:radio[name=option]:checked').val();
if(checked_radio === undefined) {
	alert('옵션을 선택해 주세요.');
	} else {
		alert(checked_radio + "를 선택하셨습니다.");
	} 
 */


</script>


<body>

<form method=POST name=myform>	
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
										
											<input id="question1" name="option" type="checkbox"
											class="with-font" value="50000" onClick="this.form.total.value=CheckChoice(this);">																					
											<label for="question1">50,000원이상</label>		
											
										<p class="plan-text">리워드 내역 : 마인도어 보드게임 1세트 | 예상일 : 2020.02.12 
										<br> 76명 참여 | 선착순 남은 수량 15개</p>																																			
										<!-- 옵션 수량 -->	
										<div class="plan-price2" style="width:300px">
										
											<div class="col-xs-3 col-xs-offset-3">
												<div class="input-group number-spinner">
												
													<input type="text" class="form-control text-center "value="1" style="width:100px"> 
													
												</div>
											</div>
										</div>
								<!-- 옵션에 따른 펀딩 금액 -->			
										<span class="plan-price">50,000원</span>												
								
											
									</div>
								</div>
																				
								<div class="plan-selection">
							<div class="plan-data">	
																			
									<input id="question2" name="he" type="checkbox"
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
									<input id="question3" name="od" type="checkbox"
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