<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
.align-center { text-align: center; }
</style>

<body>


<center><h3>현재 보유한 포인트</h3></center>
<br/>
<table border="1" align="center">
  	    <tr>
        <td width="200" bgcolor="#CCCCCC"> <p align="center"><b>포인트 잔액</b></p> </td>
        <td width="200" bgcolor="#CCCCCC"> <p align="center"><b>가격</b></p> </td>
        <td width="200" bgcolor="#CCCCCC"> <p align="center"><b>결제 후 잔액</b></p> </td>
    </tr>
    <tr>
        <td> <p align="center">포인트</p></td>
        <td> <p align="center"><span id="new_points"></span> 포인트</p> </td>
        <td> <p align="center"><span id="new_points"></span> 포인트</p> </td>
    </tr>
</table>

<div class="align-center">
결제가 완료되었습니다
00월 00일에 배송 예정입니다
<br>
<br>
	<div class="button">
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal">포인트 결제하기</button>
		</div>
		<form action="/detail/use" method="post">
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


							<label>사용아이디</label> <input type="text" class="form-control"
								id="member_id" name="member_id" value="${memberVo.member_id}">
							<label>사용금액</label> <input type="text" class="form-control"
								id="payment_point" name="payment_point">

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

<button type="button" class="btn btn-primary" onClick="location.href=''">내가 후원한 펀딩 보기</button>
<br>
<br>
<button type="button" class="btn btn-primary" onClick="window.open('','_self').close();">닫기</button>



</div>
</body>