<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		$("#projectTitle").text("리워드 설계");
		$("#projectDesc").text("서포터에게 제공할 리워드 내용을 입력하세요.")
		
		// 임시 저장된 리워드 내역 가져오기
		
		// 리워드 등록
		
		// 리워드 리스트 가져오기
		
	});
</script>
<div class="container-fluid">
	<div class="card">
		<div class="card-body">
			<strong>리워드 설계 조건</strong>
		</div>
		<div class="card">
			<div class="card-body">
				<table class="table table-borderless">
					<thead>
						<tr>
							<th scope="col">조건</th>
							<th scope="col">설명</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">정렬 순서</th>
							<td>혜택이 높은 순으로 나오도록 정렬 순서를 등록하세요</td>
						</tr>
						<tr>
							<th scope="row">제한 수량</th>
							<td>생산 및 제공할 수 있는 리워드의 총 수량으로 해당 수량이 모두 펀딩되면 더 이상 펀딩 불가합니다.</td>
						</tr>
						<tr>
							<th scope="row">발송 시작일</th>
							<td>프로젝트 종료일 이후부터 3개월 이내로 설계 가능합니다.</td>
						</tr>
						<tr>
							<th scope="row">옵션 조건</th>
							<td>옵션(사이즈, 색상 등)이 필요한 경우, 옵션을 추가하세요. 옵션은 선택형과 직접 텍스트를 입력하는
								직접 입력형으로 설계 가능합니다.</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="card-body">
			<button class="btn btn-secondary" data-toggle="modal"
				data-target="#productInfo">추가 하기</button>
			<div class="col-md-12"></div>
		</div>
	</div>
	<div class="card-body">
		<div class="form-group">
			<button class="btn btn-primary" id="btnSave">저장</button>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="productInfo" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">리워드 추가</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<table class="table table-borderless">
					<thead>
						<tr>
							<th scope="col">조건</th>
							<th scope="col">내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">금액</th>
							<td>
								<div class="row">
									<div class="col-md-10">
										<input type="text" class="form-control" />
									</div>
									<div class="col-md-2">원</div>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">리워드 명</th>
							<td><input type="text" class="form-control" /></td>
						</tr>
						<tr>
							<th scope="row">상세 설명</th>
							<td><textarea class="form-control" cols="3"></textarea></td>
						</tr>
						<tr>
							<th scope="row">옵션 조건</th>
							<td><select class="custom-select">
									<option selected>Open this select menu</option>
									<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>
							</select></td>
						</tr>
						<tr>
							<th scope="row">배송 조건</th>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="exampleRadios" id="exampleRadios1" value="option1"
										checked> <label class="form-check-label"
										for="exampleRadios1"> Default radio </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="exampleRadios" id="exampleRadios2" value="option2">
									<label class="form-check-label" for="exampleRadios2">
										Second default radio </label>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">제한 수량</th>
							<td>
								<div class="row">
									<div class="col-md-10">
										<input type="text" class="form-control">
									</div>
									<div class="col-md-2">개</div>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">발송 시작일</th>
							<td>
								<div class="row">
									<div class="col-md-6">
										<select class="custom-select">
											<option selected>Open this select menu</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
									<div class="col-md-6">
										<select class="custom-select">
											<option selected>Open this select menu</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!-- //Modal -->