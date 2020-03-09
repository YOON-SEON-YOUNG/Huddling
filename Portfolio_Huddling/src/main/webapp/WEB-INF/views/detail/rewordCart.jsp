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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>Insert title here</title>
</head>
<style>
 /*
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
 */
 section#content ul li { margin:10px 0; }
 section#content ul li img { width:250px; height:250px; }
 section#content ul li::after { content:""; display:block; clear:both; }
 section#content div.thumb { float:left; width:250px; }
 section#content div.gdsInfo { float:right; width:calc(100% - 270px); }
 section#content div.gdsInfo { font-size:20px; line-height:2; }
 section#content div.gdsInfo span { display:inline-block; font-weight:bold; margin-right:30px; width:140px;}
 section#content div.gdsInfo .delete { text-align:right; }
 section#content div.gdsInfo .delete button { font-size:22px;
            padding:5px 10px; border:1px solid #eee; background:#eee;}

.delBtn { float:right; width:300px; text-align:right; }
.delBtn button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee;}
 
.listResult { padding:20px; background:#eee; }
.listResult .sum { float:left; width:45%; font-size:22px; }

.listResult .orderOpne { float:right; width:45%; text-align:right; }
.listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
.listResult::after { content:""; display:block; clear:both; }

.orderInfo { border:5px solid #eee; padding:20px; display:none; }
.orderInfo .inputArea { margin:10px 0; }
.orderInfo .inputArea label { display:inline-block; width:140px; margin-right:10px; }
.orderInfo .inputArea input { font-size:14px; padding:5px; width:300px; }
#userAddr2, #userAddr3 { width:250px; }

.orderInfo .inputArea:last-child { margin-top:30px; }
.orderInfo .inputArea button { font-size:20px; border:2px solid #ccc; padding:5px 10px; background:#fff; margin-right:20px;}
</style>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("useraddr3").value = extraAddr;
                
                } else {
                    document.getElementById("useraddr3").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('useraddr1').value = data.zonecode;
                document.getElementById("useraddr2").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("useraddr3").focus();
            }
        }).open();
    }
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
		
		<section id="content">
 <h1>리워드 보관함</h1>
 <ul>
 <li>
  <div class="allCheck">
   <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label> 
   <script>
   $("#allCheck").click(function(){
	   var chk = $("#allCheck").prop("checked");
	   if(chk) {
		   $(".chBox").prop("checked",true);
	   } else {
		   $(".chBox").prop("checked", false);
	   }
   });
   
   </script>
  
  </div>
  <div class="delBtn">
   <button type="button" class="selectDelete_btn">선택 삭제</button> 
   
   <script>
		 $(".selectDelete_btn").click(function(){
		  var confirm_val = confirm("정말 삭제하시겠습니까?");
		  
		  if(confirm_val) {
		   var checkArr = new Array();
		   
		   $("input[class='chBox']:checked").each(function(){
		    checkArr.push($(this).attr("data-cartNum"));
		   });
		    
		   $.ajax({
		    url : "/detail/deleteCart",
		    type : "post",
		    data : { chbox : checkArr },
		    success : function(result){
		    	
				if (result == 1) {
									location.href = "/detail/rewordCart";
								} else {
									alert("삭제 실패");

								}

							}
						});
					}
				});
			</script>

  </div>  
 
 </li>
 <hr>
  <c:set var="sum" value="0" />
 
  <c:forEach items="${cartList}" var="cartList">
  <li>
   <div class="checkBox">
   <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.reword_cart_num}" />
   <script>
   	$(".chBox").click(function(){
   		$("#allCheck").prop("checked", false);
   	});
   </script>
  </div>
   <div class="thumb">
    <img src="/upload/imgView?fileName=${cartList.project_image}" />
   </div>
   <div class="gdsInfo">
    <p>
     <span>프로젝트명</span>${cartList.project_name}<br />
     <span>선택한 리워드</span>${cartList.temp_reword_name}<br />
     <span>리워드 내용</span>${cartList.temp_reword_desc}<br />
     <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${cartList.temp_reword_price}" />원<br />
     <span>리워드 옵션</span>${cartList.temp_reword_option}<br />
     <span>구입 수량</span>${cartList.cartstock}개<br />
     <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${cartList.temp_reword_price * cartList.cartstock}" />원
    </p>    
    
     <div class="delete">
     <button type="button" class="delete_${cartList.reword_cart_num}_btn" data-cartNum="${cartList.reword_cart_num}">삭제</button>
   	 <script>
		    $(".delete_${cartList.reword_cart_num}_btn").click(function(){
		     var confirm_val = confirm("정말 삭제하시겠습니까?");
		     
		     if(confirm_val) {
		      var checkArr = new Array();
		      
		      checkArr.push($(this).attr("data-cartNum"));
		                 
		      $.ajax({
		       url : "/detail/deleteCart",
		       type : "post",
		       data : { chbox : checkArr },
		       success : function(result){
		        if(result == 1) {            
		         location.href = "/detail/rewordCart";
		        } else {
		         alert("삭제 실패");
		        }
		       }
		      });
		     } 
		    });
   </script>
 
   
    </div>
    
   </div>
  
   
  </li>
  
  <c:set var="sum" value="${sum + (cartList.temp_reword_price * cartList.cartstock)}" />
  
  </c:forEach>
 </ul>
<hr> 
 <div class="listResult">
 <div class="sum">
  총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
 </div>
 <div class="orderOpne">
  <button type="button" class="orderOpne_bnt">주문 정보 입력</button>
  
	  <script>
	 $(".orderOpne_bnt").click(function(){
	  $(".orderInfo").slideDown();
	  $(".orderOpne_bnt").slideUp();
	 });      
	</script> 

 </div>
</div>

<div class="orderInfo">
 <form role="form" method="post" autocomplete="off">
    
  <input type="hidden" name="amount" value="${sum}" />
    
  <div class="inputArea">
   <label for="">수령인</label>
   <input type="text" name="order_rec" id="order_rec" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="orderPhon">수령인 연락처</label>
   <input type="text" name="order_phone" id="order_phone" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="userAddr1">우편번호</label>
   <input type="text" name="useraddr1" id="useraddr1" required="required" />
   <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
  </div>

  
  <div class="inputArea">
   <label for="userAddr2">1차 주소</label>
   <input type="text" name="useraddr2" id="useraddr2" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="userAddr3">2차 주소</label>
   <input type="text" name="useraddr3" id="useraddr3" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="userAddr3">리워드 옵션</label>
   <input type="text" name="order_option" id="order_option" required="required" />
  </div>

  
  <div class="inputArea">
   <label for="point">사용 포인트</label>
   <input type="number" name="point" id="point" required="required" />
  </div>
  
  <div class="inputArea">
   <button type="submit" class="order_btn">주문</button>
   <button type="button" class="cancel_btn">취소</button> 
   
   <script>
 $(".orderOpne_bnt").click(function(){
  $(".orderInfo").slideDown();
  $(".orderOpne_bnt").slideUp();
 });      
</script>

  </div>
  
 </form> 
</div>
 
</section>
		
		</div>
		<div class="col-md-2">
		</div>
	</div>


</body>
</html>
<%@ include file="../board/include/board_footer.jsp"%>