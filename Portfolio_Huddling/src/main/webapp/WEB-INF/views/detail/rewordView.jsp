<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../board/include/board_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>
div.goods div.goodsInfo p.cartStock button { font-size:26px; border:none; background:none; }
</style>
<body>
<h1>리워드뷰</h1>
<form role="form" method="post" autocomplete="off">


<div class="inputArea"> 
 <label>1차 분류</label>
 <span class="category1"></span>        
 <label>2차 분류</label>
 <span class="category2" id="temp_reword_num">${rewordDto.temp_reword_num}</span>
</div>

<div class="inputArea">
 <label for="gdsName">상품명</label>
 <span>${rewordDto.temp_reword_name}</span>
</div>

<div class="inputArea">
 <label for="gdsPrice">상품가격</label>
 <span>${rewordDto.temp_reword_price}</span>
</div>

<div class="inputArea">
 <label for="gdsStock">상품수량</label>
 <span>${rewordDto.temp_reword_count}</span>
</div>

<div class="inputArea">
 <label for="gdsDes">배송일</label>
 <span>${rewordDto.temp_reword_trans_month }/${rewordDto.temp_reword_trans_days}</span>
</div>

<p class="cartstock">
 <span>구입 수량</span>
 <button type="button" class="plus">+</button>
 <input type="number" class="numBox" min="1" max="${rewordDto.temp_reword_count}" value="1" readonly="readonly"/>
 <button type="button" class="minus">-</button>
 
 <script>
  $(".plus").click(function(){
   var num = $(".numBox").val();
   var plusNum = Number(num) + 1;
   
   if(plusNum >= ${rewordDto.temp_reword_count}) {
    $(".numBox").val(num);
   } else {
    $(".numBox").val(plusNum);          
   }
  });
  
  $(".minus").click(function(){
   var num = $(".numBox").val();
   var minusNum = Number(num) - 1;
   
   if(minusNum <= 0) {
    $(".numBox").val(num);
   } else {
    $(".numBox").val(minusNum);          
   }
  });
 </script>
</p>
<p class="addToCart">
 <button type="button" id="addCart_btn">카트에 담기</button>
 
 <script>
$("#addCart_btn").click(function(){
   
   var reword_num = $("#temp_reword_num").text();
   console.log("tem_reword_num:" + temp_reword_num);
   var cartstock = $(".numBox").val();
   console.log("cartstock:" + cartstock);   
   var data = {
		 "reword_num" : reword_num,
         "cartstock" : cartstock
   };
   
   $.ajax({
    	url : "/detail/rewordCart",
    	type : "post",
    	data : data,
    	success : function(result){
    	
    		if(result == 1) {
    			alert("카트 담기 성공");
    		} else {
    			alert("로그인시 사용 가능합니다.")
    			$(".numBox").val("1");
    		}  	
    	},
    	error : function(){
     		alert("리워드 담기 실패");
    	}
   	}); // $.ajax
}); // $("#addCart_btn").click(
 </script>
</p>


</form>
</body>
</html>