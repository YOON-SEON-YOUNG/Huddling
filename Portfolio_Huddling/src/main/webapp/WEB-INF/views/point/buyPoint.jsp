<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<h1>포인트 충전</h1>


								<div class="row">
									<div class="col-md-3">
										<table class="table" style="padding: 50px">
											<thead style="background-color: #888888">
												<tr>
													<th scope="col" id="charge">충전</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row" style="width: 120px" id="chargeRead">
														
														현재포인트&nbsp; <span>금액</span>
														<span style="font-size: 30px">원</span>&nbsp;
														
														<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  충전하기
</button>

<form action="/point/buy" method="post">
<!-- 모달창 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">충전하기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <!-- 모달 입력가능창 -->
      <div class="modal-body">
  		<h4 style="text-align:center;">충전</h4>
  		<hr style="background-color:#00FF00">
  		
  		
  		<label>충전아이디</label>
  		<input type="text"class="form-control" id="member_id" name="member_id">
  		<label>충전금액</label>
  		<input type="text"class="form-control" id="member_point" name="member_point">
<!--   		<label>충전수단</label>
  		<input type="text"class="form-control"> -->
  		
      <!-- 모달 버튼창 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary">충전하기</button>
      </div>
    </div>
  </div>
</div>
</div>
</form>
													</th>

												</tr>
											<!-- 밑에 -->
												<tr>
													<td></td>	
												</tr>
											</tbody>
										</table>
										<div class="col-md-9"></div>
									</div>
							</span>

</body>
</html>