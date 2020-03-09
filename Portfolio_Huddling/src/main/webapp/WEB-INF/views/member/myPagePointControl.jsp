<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>




<style>
.button{
    position: relative;
    text-align: center;
}
</style>

<body>

	<div class="container">
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">포인트 충전</a>
    </li>
   <!--  <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">포인트 내역</a>
    </li> -->
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
  <!-- 탭1 -->
    <div id="home" class="container tab-pane active"><br>
      <h1>포인트충전</h1>
      
      <%-- memberVo : ${memberVo}<br> --%>

		
		<table border="1" align="center">
			<tr>
				<td width="200" bgcolor="#CCCCCC">
					<p align="center">
						<b>현재 보유 포인트</b>
					</p>
				</td>
			</tr>
			<tr>
				<td>
					<p align="center"><fmt:formatNumber pattern="###,###,###" value="${memberVo.member_point}"/></p>
				</td>

			</tr>
		</table>
		<br>
		<br>
		
		<div class="button">
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal">충전하기</button>
		</div>

		<form action="/member/buy" method="post">
			<!-- 모달창 -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">충전하기</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<!-- 모달 입력가능창 -->
						<div class="modal-body">
							<h4 style="text-align: center;">충전</h4>
							<hr style="background-color: #00FF00">


							<label>충전아이디</label> 
							<input type="text" class="form-control" id="member_id" name="member_id" value="${memberVo.member_id}">
							<label>충전금액</label> 
							<input type="number" class="form-control" id="member_point" name="member_point">
							<script>						
							$("#member_point").change(function() {
							    var num = $(this).val() - 1;
							    if(typeof num !== "number" || num < 0) {
							        alert("포인트 충전 가능한 금액이 아닙니다");
							        $(this).focus();
							        return false;
							    }
							});
							</script>							  							
							
							

							<!-- 모달 버튼창 -->
							<div class="modal-footer">
								<button type="button" id="#btnModalClose"
									class="btn btn-secondary" data-dismiss="modal">닫기</button>
								<button type="submit" id="btnCharge" class="btn btn-primary">충전하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form> <br> <br> <!-- 결제유의사항!-->
		<div class="charge_info" style="padding-left: 10px;">
			<ul>
				<li><span class="bold">[유의사항]</span></li>
				<li>* 충전 후, 사용하신 상품은 해지 및 취소/변경을 하실 수 없습니다.</li>
			</ul>
		</div>
      
      
    </div>
    <!-- 탭2 -->
    <div id="menu1" class="container tab-pane fade"><br>
      <%--  <%@ include file="../../member/pointList.jsp"%> --%>
    </div>
  </div>
</div>

</body>
</html>
<%@ include file="../board/include/board_footer.jsp" %>