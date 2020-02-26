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
		//임시 저장
		$('#btnSave').click(function(e){
			e.preventDefault();
			var url = '/maker/tempDataRequir'
			formsave(url);
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
				<div class="card-body">
					<textarea class="form-control" name='requir_q2'>${requirDto.requir_q2}</textarea>
				</div>
			</div>
			<div class="card-body">
				Q3 리워드의 전달 계획을 알려주세요.
				<div class="card-body">
					<textarea class="form-control" name='requir_q3'>${requirDto.requir_q3}</textarea>
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
	