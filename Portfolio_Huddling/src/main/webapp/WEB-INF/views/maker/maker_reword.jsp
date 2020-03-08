<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<style>
th {
	text-align: center;
}
.ma{
	margin: 0px;
}
.col-sm-3 {
	margin: 5px 0px 0px 0px;
}
</style>
<script>
$(document).ready(function() {
	var num = ${projectNum};
	var selOp = $('#selectedDiv');
	$("#projectTitle").text("리워드 설계");
	$("#projectDesc").text("서포터에게 제공할 리워드 내용을 입력하세요.")
	selOp.css('display', 'none');
	helpText();
	// 리워드 등록 및 변경
	$("#btnAddReword").click(function() {
		var chk = $(this).attr('data-update');
		var url ="/maker/rewordInput";
		if(chk == '0'){
		console.log('등록 중...');
		console.log("num : " + num);
		rewordAdded(url,num);
		console.log('등록 성공...');
		$('#btnAddReword').attr('data-update','1');
		} else if( chk == '1'){
			console.log('수정 중...');
			var num = $(this).attr('data-rewordNum');
			url = "/maker/rewordUpdate/" + num;
			rewordUpdate(url);
			console.log('수정 완료...');
			$('#btnAddReword').attr('data-update','0');
		}
		$('#btnClose').trigger('click');
	});
	
	// 리워드 수정
	$(".btnRewordUpdate").click(function(){
		var num = $(this).attr('data-rewordNum');
		var chk = $('#btnAddReword').attr('data-update');
		$('#btnAddReword').attr('data-rewordNum',num);
		var url = "/maker/rewordOutput/"+num;
		$.get(url,function(result){
			console.log(result);
			console.log('chk',chk);
			$('#btnAddReword').attr('data-update','1');
			$("#rewordSubject").html('<strong>리워드 수정</strong>');
			$('#price').val(result.temp_reword_price);
			$('#rewordName').val(result.temp_reword_name);
			$('#rewordDesc').val(result.temp_reword_desc);
			$('#delivery').val(result.temp_reword_trans_price);
			$('#limited').val(result.temp_reword_price);
			$('#trans_month').val(result.temp_reword_trans_month);
			$('#trans_days').val(result.temp_reword_trans_days);
			$('#btnModal').trigger('click');
			});
		});
	
	// 내용 초기화
	$('#btnClose').click(function(){
		$('#formTampData').each(function(){
			$('#btnAddReword').attr('data-update','0');
			$("#rewordSubject").html('<strong>리워드 추가</strong>');
			this.reset();
		});
	});
	// 리워드 삭제
	$(".btnRewordDelete").click(function(){
		var num = $(this).prev().attr('data-rewordNum');
		console.log('num : ' + num);
		var url = "/maker/rewordDelete/" + num;
		var deleteReword = confirm('해당 리워드를 삭제 하시겠습니까?');
		if(deleteReword == true){
		console.log('삭제중...');
			$.post(url,function(){
			alert('삭제 되었습니다.');
			window.location.reload();
			});
		}
	});
	
	//선택 옵션에 따른 옵션창 표시
	$('#selectOption').change(function() {
			var op = $(this).val();
			var strOp = "";
			switch (op) {
			case 'noneOption':
				strOp = "<input type='hidden' id='reword_option' value='none' name='temp_reword_option'>";
				break;
			case 'selectedOption':
				strOp = "<textarea name='temp_reword_option' id='reword_option' class='form-control'></textarea>";
				strOp += "<select id='previewOption' class='custom-select'>";
				strOp += "<option selected>옵션 미리보기</option>";
				selOp.css('display', 'block');
				break;
			case 'inputOption':
				strOp = "<input type='text'name='temp_reword_option' id='reword_option' class='form-control'>";
				selOp.css('display', 'block');
				break;
			}
			selOp.html(strOp);
		});
	// 미리 보기 항목 추가
	$(document).on('keydown','#reword_option',function(e){
		var keycode = e.keyCode
		var lines = $(this).val().split("\n");
		var index = lines.length;
		if(keycode == 13){
		$('#previewOption').empty();
			for(var v = 0; v < index; v++){
			$('#previewOption').append('<option>'+lines[v]+'</option>');
			}
		}
	});
	//배송이 필요한 리워드 시, 배송료 항목 추가
	$('input[name=temp_reword_trans]').change(function() {
		var ra = $('input[name=temp_reword_trans]:checked');
		var div = $('#deliveryDiv');
		if (ra.val() == 'option1') {
			div.removeClass('d-none');
			div.addClass('d-block');
		} else {
			div.removeClass('d-block');
			div.addClass('d-none');
		}
	});

	//리워드 만료일에 따른 배송 날짜 선택
	function monthsChange(){
	$('#trans_month').empty();
	var endDate = '${endDate}';
	var endYear = endDate.substring(0,endDate.indexOf('/'));
	var endMonth = endDate.substring(endYear.length + 1,endDate.lastIndexOf('/'));
	var date = new Date(endYear,endMonth,1);
	for(var i = 0; i < 3; i++){
	var addMonth = date.setMonth(date.getMonth() + i);
	var trans_date = date.toLocaleDateString('en-US');
	var trans_year = trans_date.substring(trans_date.lastIndexOf('/') + 1);
	var trans_month = Number(trans_date.substring(0,trans_date.indexOf('/'))) - 1;
	if( trans_month < 10) {
		trans_month = '0' + trans_month;
	} 
	if(trans_month == '00'){
		trans_month = '01';
	}
	var years = trans_year+'/'+trans_month;
	var option =  $("<option value="+years+">"+trans_year+'/'+trans_month +"</option>");
	$('#trans_month').append(option);
	var delMonth = date.setMonth(date.getMonth() - i);
		}
	console.log($('#trans_month').val());
	}
	
	monthsChange();
});
</script>
<div class="container-fluid rewords">
	<strong>리워드 설계 조건</strong>
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
		<button class="btn btn-secondary" id ='btnModal' data-toggle="modal" data-target="#productInfo">추가 하기</button>
		<div class="col-md-12" style="margin: 10px;">
			<div class="row rewordList">
				<c:forEach var="rewordList" items="${list }">
					<div class="col-sm-3">
						<div class='card'>
							<div class='card-body'>
								<input type="hidden" value="${rewordList.temp_reword_num }">
								<h5 class='card-title'>
									<span class="reword_price">${rewordList.temp_reword_price }원</span> <label
										class='badge badge-success' style='float: right;'>${rewordList.temp_reword_count }개</label>
								</h5>
								<hr>
								<p class='card-text'>
									<strong>${rewordList.temp_reword_name }</strong>
								</p>
								<p class='card-text'>${rewordList.temp_reword_desc }</p>
								<c:if test="${rewordList.temp_reword_trans_price ne 0}">
								<div class='card-body'>
									배송비 <span style='float: right;'>${rewordList.temp_reword_trans_price }원</span>
								</div>
								</c:if>
								<div class='card-body'>
									배송 날짜 <span style='float: right;'>${rewordList.temp_reword_trans_month }(${rewordList.temp_reword_trans_days})예정</span>
								</div>
								<div class='card-body' style='float: right;'>
									<button class='btn btn-primary btnRewordUpdate'
										data-rewordNum='${rewordList.temp_reword_num }'
									>편집</button>
									<button class='btn btn-primary btnRewordDelete'>삭제</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<div class="card-body">
	<div class="form-group">
		<button class="btn btn-primary" id="btnSave">저장</button>
	</div>
</div>


<!-- Modal -->
<div class="modal fade" id="productInfo" tabindex="-1" role="dialog"
	aria-labelledby="rewordSubject" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="rewordSubject"><strong>리워드 추가</strong></h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="formTampData">
					<input type="hidden" name="temp_project_num" value="${projectNum}" />
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
											<input id='price' name='temp_reword_price' type="text"
												class="form-control"
												placeholder="금액 입력" />
										<small id="helpTxt" class="form-text text-danger help"></small>
										</div>
										<div class="col-md-2">원</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for='rewordName'>리워드 명</label></th>
								<td><input id='rewordName' name='temp_reword_name'
									type="text" class="form-control"
									placeholder="타이틀 입력 ex) [얼리버드]기본 리워드" />
									<small id="helpTxt" class="form-text text-muted help"></small>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for='rewordDesc'>상세 설명</label></th>
								<td><textarea id='rewordDesc' name='temp_reword_desc' class="form-control" cols="3"
								placeholder="제공하는 리워드가 무엇인지 간략하게 제시해 주세요"></textarea>
								<small id="helpTxt" class="form-text text-muted help"></small>
								</td>
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
								<div class="container">
									<div id='deliveryDiv' class="row d-block" style="float: left;">
									<label for='delivery' class='col-sm-3' style="float: left; padding: 0">배송료 </label>
									<input id='delivery' type="text" name='temp_reword_trans_price' class="form-control col-sm-9"
									value='0'/>
									<small>(배송비가 없는 경우, 0원 입력)</small>
									</div>
								</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-check">
										<input class="form-check-input" type="radio"
											name="temp_reword_trans" id="deliveryRadio2" value="option2">
										<label class="form-check-label" for="deliveryRadio2">배송이
											필요없는 리워드 </label>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for='limited'>제한 수량</label></th>
								<td>
									<div class="row">
										<div class="col-md-10">
											<input id='limited' type="text" name='temp_reword_count'
												class="form-control"
												placeholder="수량 입력">
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
											<select class="custom-select" id ='trans_month' name='temp_reword_trans_month'>
												<option selected>연도/월</option>
												<option value="2020/04">2020/04</option>
												<option value="2020/05">2020/05</option>
												<option value="2020/06">2020/06</option>
											</select>
										</div>
										<div class="col-md-6">
											<select class="custom-select" id = 'trans_days' name='temp_reword_trans_days'>
												<option selected>시기</option>
												<option value="1~10">초(1~10일)</option>
												<option value="11~20">중순(11~20일)</option>
												<option value="21~">말(21~말일)</option>
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
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id='btnClose'>닫기</button>
				<button type="button" class="btn btn-primary" id="btnAddReword" data-update='0'
				data-rewordNum='0'>추가</button>
			</div>
		</div>
	</div>
</div>
<!-- //Modal -->
