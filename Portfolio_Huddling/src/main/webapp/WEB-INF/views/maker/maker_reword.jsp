<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<style>
th {
	text-align: center;
}
</style>
<script>
	$(document).ready(function() {
		var selOp = $('#selectedDiv');
		$("#projectTitle").text("리워드 설계");
		$("#projectDesc").text("서포터에게 제공할 리워드 내용을 입력하세요.")
		selOp.css('display', 'none');
		// 임시 저장된 리워드 내역 가져오기

		// 리워드 등록
		$("#btnAddReword").click(function(){
			formsave("rewordInput");
			$('#btnClose').trigger('click');
		});
		// 리워드 리스트 가져오기

		//선택 옵션에 따른 옵션창 표시
		$('#selectOption').change(function() {
			var op = $(this).val();
			var strOp = "";
			switch (op) {
			case 'noneOption':
				break;
			case 'selectedOption':
				strOp = "<textarea name='temp_reword_option' class='form-control'></textarea>";
				strOp += "<select id='previewOption' class='custom-select'>";
				strOp += "<option selected>옵션 미리보기</option>";
				selOp.css('display', 'block');
				break;
			case 'inputOption':
				strOp = "<input type='text'name='temp_reword_option' class='form-control'>";
				selOp.css('display', 'block');
				break;
			}
			selOp.html(strOp);
		});
		$('input[name=deliveryRadio]').change(function() {
			var ra = $('input[name=deliveryRadio]:checked');
			if (ra.val() == 'option1') {
				$('#deliveryDiv').css('display', 'block');
			} else {
				$('#deliveryDiv').css('display', 'none');
			}
		});
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
			<form id="formTampData">
			<input type="hidden" name="temp_project_num" value="1"/>
				<table class="table table-borderless">
					<thead>
						<tr>
							<th scope="col">조건</th>
							<th scope="col">내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row"><label for='price'>금액</label></th>
							<td>
								<div class="row">
									<div class="col-md-10">
										<input id='price' name='temp_reword_price' type="text" class="form-control" />
									</div>
									<div class="col-md-2">원</div>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for='rewordName'>리워드 명</label></th>
							<td><input id='rewordName' name='temp_reword_name' type="text" class="form-control" /></td>
						</tr>
						<tr>
							<th scope="row"><label for='rewordDesc'>상세 설명</label></th>
							<td><textarea id='rewordDesc' name='temp_reword_desc' class="form-control" cols="3"></textarea></td>
						</tr>
						<tr>
							<th scope="row" rowspan="2"><label>옵션 조건</label></th>
							<td><select id="selectOption" class="custom-select">
									<option selected>옵션 조건 유형을 선택하세요</option>
									<option value="noneOption">옵션 없음</option>
									<option value="selectedOption">선택 옵션(사이즈, 색상 등)</option>
									<option value="inputOption">직접 입력 옵션(각인, 메시지 등)</option>
							</select></td>
						</tr>
						<tr>
							<td>
								<div id="selectedDiv"></div>
							</td>
						</tr>
						<tr>
							<th scope="row" rowspan="3"><label>배송 조건</label></th>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="temp_reword_trans" id="deliveryRadio1" value="option1"
										checked> <label class="form-check-label"
										for="deliveryRadio1"> 배송이 필요한 리워드 </label>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div id='deliveryDiv' class="row">
									<div class='col-md-3'>
										<label for='delivery'>배송료</label>
									</div>
									<div class='col-md-6'>
										<input id='delivery' type="text" name='temp_reword_trans_price' class="form-control">
									</div>
									<div class='col-md-3'>
									<span>원</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="temp_reword_trans" id="deliveryRadio2" value="option2">
									<label class="form-check-label" for="deliveryRadio2">배송이 필요없는 리워드 </label>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for='limited'>제한 수량</label></th>
							<td>
								<div class="row">
									<div class="col-md-10">
										<input id='limited' type="text" name='temp_reword_count' class="form-control">
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
										<select class="custom-select" name='temp_reword_trans_month'>
											<option selected>연도/월</option>
											<option value="2020/04">2020/04</option>
											<option value="2020/05">2020/05</option>
											<option value="2020/06">2020/06</option>
										</select>
									</div>
									<div class="col-md-6">
										<select class="custom-select" name='temp_reword_trans_days'>
											<option selected>시기</option>
											<option value="1">초(1~10일)</option>
											<option value="2">중순(11~20일)</option>
											<option value="3">말(21~말일)</option>
										</select>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id='btnClose'>닫기</button>
				<button type="button" class="btn btn-primary" id="btnAddReword">추가</button>
			</div>
		</div>
	</div>
</div>
<!-- //Modal -->