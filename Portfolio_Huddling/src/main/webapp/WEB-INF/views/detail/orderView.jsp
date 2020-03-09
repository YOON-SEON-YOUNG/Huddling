<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
 .orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
 
 .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
 .orderView li::after { content:""; display:block; clear:both; }
 
 .thumb { float:left; width:200px; }
 .thumb img { width:200px; height:200px; }
 .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
 .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }
</style>
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
		<h1>내가 후원한 펀딩</h1>
		<br>
		<br>
		<section id="content">

 <div class="orderInfo">
  <c:forEach items="${orderView}" var="orderView" varStatus="status">
   
   <c:if test="${status.first}">
    <p><span>수령인</span>${orderView.order_rec}</p>
    <p><span>주소</span>(${orderView.useraddr1}) ${orderView.useraddr2} ${orderView.useraddr3}</p>
    <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
    <p><span>상태</span>${orderView.delivery}</p>
   </c:if>
   
  </c:forEach>
 </div>
 
 <ul class="orderView">
  <c:forEach items="${orderView}" var="orderView">     
  <li>
   <div class="thumb">
    <img src="/upload/imgView?fileName=${orderView.project_image}" />
   </div>
   <div class="gdsInfo">
    <p>
     <span>상품명</span>${orderView.temp_reword_name}<br />
     <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.temp_reword_price}" /> 원<br />
     <span>구입 수량</span>${orderView.cartstock} 개<br />
     <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.temp_reword_price * orderView.cartstock}" /> 원                  
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