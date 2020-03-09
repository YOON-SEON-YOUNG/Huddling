<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script>
	$(document).ready(function() {
				imgInp();
				$("#projectTitle").text("메이커 정보");
				
				//임시 저장
				$('#btnSave').click(function(){
					var url= "/maker/tempDataMakersInfo";
					$('#introImg').val()
					formsave(url);
				});
			});
</script>
<div class="container-fluid">
	<form id="formTampData">
	<input type="hidden" value="${projectNum }" name="temp_makerinfo_num"/>
	<div class="card">
		<div class="card-body">
		<h4>메이커 기본 정보</h4>
		<p class='form-text text-muted'>프로젝트 상세 페이지에 노출되는 정보이니, 서포터와 소통이 가능한 정확한 정보를 입력해주세요.</p>
			<div class="form-group">
				<label for="makerName"><strong>메이커 이름</strong></label>
				<small class='form-text text-muted'>
				법인사업자는 법인등기부상 법인명 / 개인 사업자는 주민등록상 성명 또는 상호 / 개인은 주민등록상 성명을 입력하세요.
				</small>
				<input type="text" class="form-control" id="makerName" name="temp_makerinfo_name"
				value="${makersDto.temp_makerinfo_name }" placeholder="메이커 명 입력"/>
				<small class='form-text text-muted help'></small>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inputGroupFile01">소개 이미지 등록</label>
				<small class='form-text text-muted'>업체 로고나 메이커님의 사진을 등록해주시면, 메이커 정보에서 확인할 수 있습니다.</small>
				<div class="custom-file">
			    <input type="file" class="custom-file-input" id="imgInp" aria-describedby="inputGroupFileAddon01">
			    <label class="custom-file-label" for="inputGroupFile01">이미지 파일을 선택하세요</label>
			  	</div>
					<div class="form-group">
					  <img id="blah" src="/upload/imgView?fileName=${makersDto.temp_makerinfo_image }"/>
					  <input type="hidden" id = "introImg"  name='temp_makerinfo_image' value='${makersDto.temp_makerinfo_image }'/>
					</div>
				</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inquiryNum"><strong>문의 전화번호</strong></label>
				<small class='form-text text-muted'>오픈 이후 서포터와 원활한 소통이 가능한 전화번호를 적어주세요.</small>
				<input type="text" class="form-control" id="inquiryNum" name="temp_makerinfo_tel" value="${makersDto.temp_makerinfo_tel }"
				placeholder="전화번호 입력"/>
				
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="inquiryEmail"><strong>문의 이메일</strong></label>
				<small class='form-text text-muted'>오픈 이후 서포터와 원활한 소통이 가능한 이메일 주소를 적어주세요.</small>
				<input type="text" class="form-control" id="inquiryEmail" name="temp_makerinfo_email" value="${makersDto.temp_makerinfo_email }"
				placeholder="이메일 입력"/>
				
			</div>
		</div>
	</div>
	<div class="card">
		<div class="card-body">
			<h4>대표자 정보</h4>
			<p class='form-text text-muted'>정산과 관련된 전자 약정 체결을 위한 정보이니, 정확하게 입력해주세요.</p>
			<div class="form-group">
				<label for="repSortation"><strong>사업자 구분</strong></label>
				<small class='form-text text-muted'><strong>사업자등록증 상단의 사업자 종류를 확인해주세요.</strong><br>
				일반과세자, 간이과세자는 개인사업자를 선택해주세요.<br>
<strong>미성년자는 사업자 구분이 개인인 경우 프로젝트 진행이 불가합니다.</strong></small>
				<select class="form-control" name="temp_makerinfo_repr">
					<option>개인</option>
					<option>개인 사업자</option>
					<option>법인 사업자</option>
				</select>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="repName"><strong>대표자 명</strong></label>
				<small class='form-text text-muted'>사업자등록증에 등록된 대표자의 이름과 일치해야 합니다.</small>
				<input type="text" class="form-control" id="repName" name="temp_makerinfo_reprname" value ="${makersDto.temp_makerinfo_reprname }"/>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="repEmail"><strong>대표자 이메일</strong></label>
				<small class='form-text text-muted'>대표자의 이메일로 전자 약정서가 발송되며, 대표자가 직접 체결해야합니다. (모바일/PC 모두 가능)</small>
				<input type="text" class="form-control" id="repEmail" name="temp_makerinfo_repremail" value="${makersDto.temp_makerinfo_repremail }"/>
			</div>
		</div>
	</div>
	</form>
</div>
<div class="card-body">
	<button class="btn btn-primary" id="btnSave">저장</button>
</div>
