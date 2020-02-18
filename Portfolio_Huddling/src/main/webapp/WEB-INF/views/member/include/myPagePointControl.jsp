<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
				<!-- 포인트충전시작 -->
							<span id="list-item-5" >
								<h4>포인트충전</h4>
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
														
														보유포인트&nbsp; <span>XXXX</span>
														<span style="font-size: 30px">원</span>&nbsp;
														
														<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  충전하기
</button>

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
  		
  		<label>충전금액</label>
  		<input type="text"class="form-control" >
  		<label>충전수단</label>
  		<input type="text"class="form-control">
  		
  		
      <!-- 모달 버튼창 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">충전하기</button>
      </div>
    </div>
  </div>
</div>
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