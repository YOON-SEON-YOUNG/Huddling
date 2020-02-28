<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.listResult { padding:20px; background:#eee; }
.listResult .sum { float:left; width:45%; font-size:22px; }

.listResult .orderOpne { float:right; width:45%; text-align:right; }
.listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
.listResult::after { content:""; display:block; clear:both; }
</style>
<body>

<section id="content">
 <ul>
  <c:set var="sum" value="0"/>
  <c:forEach items="${rewordCartList}" var="rewordCartList">
  <li>

   <div class="gdsInfo">
    <p>
     <span>아이디</span>
     <span>상품명</span>${rewordCartList.temp_reword_name}<br />
     <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${rewordCartList.temp_reword_price}" /> 원<br />
     <span>구입 수량</span>${rewordCartList.cartstock} 개<br />
     <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${rewordCartList.temp_reword_price * rewordCartList.cartstock}" /> 원
    </p>
    
    <div class="delete">
     <button type="button" class="delete_btn">삭제</button>
    </div>
   </div>   
  </li>
  <c:set var="sum" value="${sum + (rewordCartList.temp_reword_price * rewordCartList.cartstock)}" />
  </c:forEach>
 </ul>
 <div class="listResult">
 <div class="sum">
  총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
 </div>
 <div class="orderOpne">
 <button type="button" class="orderOpne_bnt">주문 정보 입력</button>
 </div>
	</div>
</section>

</body>
</html>