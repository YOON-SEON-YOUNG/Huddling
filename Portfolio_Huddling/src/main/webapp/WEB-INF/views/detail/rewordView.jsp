<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="/resources/main/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<style>
div.goods div.goodsInfo p.cartStock button { font-size:26px; border:none; background:none; }
div.button input {
	 display: block; width: 13%; height: auto; margin: 0 auto;

}
</style>
<body>
<h1>Reward View</h1>
<br>
<br>
<br>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" >
		<div class="container">    
		<div class="row">
			<div class="col-md-8">		
				
				<div class="panel panel-default  panel--styled">
					<div class="panel-body">
						
						<div class="col-md-12 panelTop">	
							<div class="col-md-8">	
							<h1>${rewordDto.temp_reword_name}</h1>															
							<form role="form" method="post" autocomplete="off">
	<input type="hidden" id="reword_num" name="temp_reword_num" value="${rewordDto.temp_reword_num}">
</form>


<div class="inputArea">
 <label for="gdsPrice">리워드 가격 :</label>
 <span><fmt:formatNumber pattern="###,###,###" value="${rewordDto.temp_reword_price}"/>원</span>
</div>

<div class="inputArea">
 <label for="gdsPrice">리워드 내용 :</label>
 <span>${rewordDto.temp_reword_desc}</span>
</div>

<div class="inputArea">
 <label for="gdsPrice">리워드 옵션 :</label>
 <span>${rewordDto.temp_reword_option}</span>
</div>

<div class="inputArea">
 <label for="gdsDes">배송예정일 :</label>
 <span>${rewordDto.temp_reword_trans_month }/${rewordDto.temp_reword_trans_days}</span>
</div>

<div class="inputArea">
 <label for="gdsStock">리워드 수량 :</label>
 <span>${rewordDto.temp_reword_count}개</span>
</div>

<c:if test="${rewordDto.temp_reword_count != 0}">

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
 <button type="button" class="btn btn-lg btn-add-to-cart" id="addCart_btn">리워드 담기</button>
 
 <script>
  $("#addCart_btn").click(function(){
   
   var reword_num = $("#reword_num").val();
   var cartstock = $(".numBox").val();
   
   console.log("reword_num:" + reword_num);
   console.log("cartstock:" + cartstock);
      
   var data = {
		reword_num : reword_num,
        cartstock : cartstock
     };
   
   $.ajax({
    url : "/detail/rewordcart",
    type : "post",
    data : data,
    success : function(result){
    	
    	if(result == 1) {
    		alert("리워드 담기 성공");
    	} else {
    		alert("로그인시 사용 가능합니다.")
    		$(".numBox").val("1");
    	}  	
    },
    error : function(){
     alert("리워드 담기 실패");
    }
   });
  });
 </script>
</p>
</c:if>

<c:if test="${rewordDto.temp_reword_count == 0}">
	<p>펀딩이 마감되었습니다.</p>
	</c:if> 
							
							
							</div>
						</div>
							
							
							</div>
				
						
						</div>
					</div>
				</div>
			</div>
			
			<div class="button">
			<input type="button" value="닫기" onclick="top.window.close()">
			</div>
			
		</div>
			<div class="col-md-2">
		</div>
		
    </div>
</body>
</html>