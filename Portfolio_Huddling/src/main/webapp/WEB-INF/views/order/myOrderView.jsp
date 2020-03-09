<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>
/*
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
*/
 .orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;}
 .orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:140px; }
 
 .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
 .orderView li::after { content:""; display:block; clear:both; }
 
 .thumb { float:left; width:200px; }
 .thumb img { width:200px; height:200px; }
 .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
 .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:140px; margin-right:10px; }
 
 .deliveryChange { text-align:right; }
 .delivery1_btn,
 .delivery2_btn { font-size:16px; background:#fff; border:1px solid #999; margin-left:10px; }
</style>
<script>   
$(document).ready(function() {
   $(".delivery2_btn").click(function(){
	   var order_id = $("#order_id").val();
	   var delivery = "배송 완료";
	   var data = {
			"order_id" : order_id,
			"delivery" : delivery
	   };
	   $.post('/order/myOrderView', data, function(rData) {
		   console.log(rData);
		   if (rData.trim() == "success" && $("#delevery_state").text() != "배송 완료") {
			   alert("배송 완료 처리 되었습니다.");
			   $("#delevery_state").text("배송 완료");
		   }
	   });
   });
});   
  </script>
<body>
<br>
<br>	
<br>
<br>
<br>
<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		<h1>내 프로젝트 주문 관리</h1>
		<br>
		<br>
		 <section id="content">
<div class="orderInfo">
  <c:forEach items="${myview}" var="OrderListDto" varStatus="status">
   
   <c:if test="${status.first}">
    <p><span>주문자</span>${OrderListDto.member_id}</p>
    <p><span>수령인</span>${OrderListDto.order_rec}</p>
    <p><span>주소</span>(${OrderListDto.useraddr1}) ${OrderListDto.useraddr2} ${OrderListDto.useraddr3}</p>
    <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${OrderListDto.amount}" /> 원</p>
    <p><span>사용한 포인트</span><fmt:formatNumber pattern="###,###,###" value="${OrderListDto.point}" /> 포인트</p>
    <p><span>상태</span><span id="delevery_state">${OrderListDto.delivery}</span></p>

	<div class="deliveryChange">
<!-- 		<form role="form" method="post" action="/order/myOrderView" -->
<!-- 			class="deliveryForm"> -->

			<input type="hidden" name="order_id" id="order_id"
				value="${OrderListDto.order_id}" /> 
			<input type="hidden" id="delivery"
				name="delivery" class="delivery" value="" />


			<button type="button" class="delivery2_btn">배송 완료</button>


<!-- 		</form> -->
	</div>
</c:if>
   
  </c:forEach>
 </div>
 
 <ul class="orderView">
  <c:forEach items="${myview}" var="OrderListDto">     
  <li>
   <div class="thumb">
    <img src="/upload/imgView?fileName=${OrderListDto.project_image}" />
   </div>
   <div class="gdsInfo">
    <p>
     <span>리워드명</span>${OrderListDto.temp_reword_name}<br />
     <span>리워드 옵션</span>${OrderListDto.order_option}<br />
     <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${OrderListDto.temp_reword_price}" /> 원<br />
     <span>구입 수량</span>${OrderListDto.cartstock}개<br />
     <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${OrderListDto.temp_reword_price * OrderListDto.cartstock}" /> 원                  
    </p>
   </div>
  </li>     
  </c:forEach>
 </ul>
</section>
		
		</div>
		<div class="col-md-2">
		</div>
	</div>



</body>
</html>
<%@ include file="../board/include/board_footer.jsp"%>