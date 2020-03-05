<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	$(document).ready(function() {
		$("#projectTitle").text("기본 요건");
		$("#projectDesc")
				.text(
						"펀딩 진행을 위한 기본 요건을 확인하고자 합니다. 심사 시 확인하는 중요한 정보이므로 반드시 정확한 정보를 입력하세요.");
		helpText();
		//임시 저장
		$('#btnSave').click(function(e){
			e.preventDefault();
			var url = '/maker/tempDataRequir'
			formsave(url);
		});
		
		//q1 항목 검사
		if($("input:radio[name='requir_q1']:radio[value='true']").attr("checked",true)){
			$('#q1_true').removeClass('d-none');
			$('#q1_true').addClass('d-block');
		};
		$('input[name=requir_q1]').change(function(){
		var q1 = $('input[name=requir_q1]:checked');
		console.log(q1.val());
		if(q1.val() == 'true'){
			$('#q1_true').removeClass('d-none');
			$('#q1_true').addClass('d-block');
		} else if (q1.val() == 'false'){
			$('#q1_true').removeClass('d-block');
			$('#q1_true').addClass('d-none');
		}
		});
		
		//체크 버튼 활성화 
		var q4 = $('input[name=requir_q4]');
		q4.change(function(){
		if(q4.is(':checked')){
			q4.val('true');
			} else {
			q4.val('false');
			}
		console.log(q4.val());
		});
		if($('#requir_q4').val() ==  'true'){
			q4.attr('checked',true);
		} else if(q4.val() == 'false'){
			q4.attr('checked',false);
		}
	});
</script>

<div class="container-fluid" id="requirDiv">
<form name="formTampData" id="formTampData">
<input type='hidden' name='temp_requir_num' value='${requirDto.temp_requir_num }'/>
		<div class="card">
			<div class="card-body">
				Q1 리워드가 타 크라우드펀딩사 및 온라인 커머스, 자사 홈페이지 등 다른 판매처에서 유통된 적이 있거나 현재 유통
				중인가요?
				<div class="card-body">
					<div>
						<label> <input type="radio" name="requir_q1"
							class="form-check-input" value="true"
							<c:if test='${requirDto.requir_q1 eq "true"}'>checked</c:if>
							>&nbsp;예, 다른 곳에서 유통한 적이 있습니다. 또는 현재 유통 중입니다.
						</label>
						<div class='d-none' id='q1_true'>
						<small class='form-text text-muted'>리워드가 다른 판매처에서 유통된 적이 있다면 리워드로 제공할 수 없습니다.<br>
						기존에 유통하던 제품/서비스에 비해 개선된 점이 있다면 아래에 상세하게 작성해주세요.<br></small>
						<textarea class='form-control' name='requir_q1Desc' id='q1Desc'
						placeholder="ex) 리워드의 개선점을 보완하여 세부기능 OO이 추가되었고, 이전에 판매된 적이 없는 새로운 브라운 컬러로 리워드 프로젝트를 진행하려고 합니다."></textarea>
						<small class='form-text text-muted help'></small>
						</div>
					</div>
					<div>
						<label> <input type="radio" name="requir_q1"
							class="form-check-input" value="false"
							<c:if test='${requirDto.requir_q1 eq "false"}'>checked</c:if>
							>&nbsp;아니요. 다른 곳에서 유통한
							적이 없으며 허들링을 통해 처음 선보이는 제품입니다.
						</label>
					</div>
				</div>
			</div>
			<div class="card-body">
				Q2 현재까지 진행된 리워드의 준비 상태 및 앞으로의 계획을 구체적으로 설명해주세요.
				<small class='form-text text-muted'>
				1) 리워드가 유형의 제품인 경우 제작 공정에 따른 현재 리워드의 제작 상태 및 제조 시설명과 일일 최대 생산 가능량을 포함한 앞으로의 생산 계획을 작성해주세요.<br>
				2) 공연, 영화, 전시 등 무형 서비스인 경우, 장소 대관, 촬영 일정 등의 현재 준비 상태 및 앞으로의 계획을 작성해주세요.<br>
				</small>
				<div class="card-body">
					<textarea class="form-control" name='requir_q2' placeholder="내용을 입력해 주세요" id='q2Desc'>${requirDto.requir_q2}</textarea>
					<small class='form-text text-muted help'></small>
				</div>
			</div>
			<div class="card-body">
				Q3 리워드의 전달 계획을 알려주세요.
				<small class='form-text text-muted'>
				1) 리워드의 전달 방법(택배 or SMS 등)을 입력하고, 리워드 제작 및 전달 일정이 변동될 가능성이 있다면 사유를 알려주세요.<br>
				2) 발송 업체명 및 일일 최대 발송 가능량을 입력해주세요.<br>
				3) 공연, 영화, 전시 등 무형 서비스의 경우 좌석수, 일 최대 예약 가능 수량 등을 작성해주세요.<br>
				</small>
				<div class="card-body">
					<textarea class="form-control" name='requir_q3' placeholder="내용을 입력해 주세요" id='q3Desc'>${requirDto.requir_q3}</textarea>
					<small class='form-text text-muted help'></small>
				</div>
			</div>
			<div class="card-body">
				Q4 수수료 정책 동의
				<div class="card-body">
					<div class="card">
						<div class="card-body">
							<span>리워드 오픈 수수료는 7% (VAT별도)입니다.</span>
							<ul>
								<li class="list-item">부가 서비스 이용 시, 추가 수수료가 발생될 수 있습니다.</li>
								<li class="list-item">리워드가 없는 기부후원 프로젝트의 경우, 수수료가 다르게
									적용됩니다.</li>
							</ul>
						</div>
					</div>
					<label><input type="checkbox" class="form-check-input"
						name="requir_q4" value="true"
						>수수료 정책을 확인하였습니다</label>	
						<input type="hidden" value="${requirDto.requir_q4 }" id="requir_q4"/>
				</div>
			</div>	
		</div>
</form>
		<div class="card-body">
			<button class="btn btn-primary" id="btnSave">저장</button>
		</div>
	</div>
	