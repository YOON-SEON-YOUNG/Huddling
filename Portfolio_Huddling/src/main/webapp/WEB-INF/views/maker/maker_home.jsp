<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/mainHeader.jsp"></jsp:include>
<jsp:include page="include/makerHeader.jsp"></jsp:include>
<script type="text/javascript">
	$(document).ready(function() {
		$("#bread").remove();
		$("#projectTitle").text("펀딩 준비");
		$("#projectDesc").text("본격적으로 펀딩을 오픈하기 위해 프로젝트에 대한 아래의 필수항목을 작성하세요.")

		$("#btnBasicInfo").click(function() {
			console.log("click");
		});
		 var num = ${projectNum};
		$(".btn").click(function() {
			var btnId = $(this).attr("id");
			switch (btnId) {
			case "btnBasicrequir":
				location.href = "/maker/requir/"+ num
				break;
			// 기본 정보
			case "btnBasicInfo":
				location.href = "/maker/info/" + num
				break;
			// 스토리 작성
			case "btnStory":
				location.href = "/maker/story/" + num
				break;
			// 리워드 설계
			case "btnReword":
				location.href = "/maker/reword/" + num
				break;
			// 메이커 정보
			case "btnMakerInfo":
				location.href = "/maker/makerInfo/" + num
				break;
			}
		});
		
		$.get("/chk/chkBasic/" + num,function(data){
			console.log("data",data);
			if(data == 0){
				$('#basic').text("작성중");
				$('#basic').attr('class','badge btn-primary');
			} else if(data == 1){
				$('#basic').text("작성완료");
				$('#basic').attr('class','badge btn-success');
			}
		});
		
		$.get("/chk/chkReword/" + num,function(data){
			console.log("data",data);
			if(data == 0){
				$('#reword').text("작성중")
				$('#reword').attr('class','badge btn-primary');
			} else if(data >= 1){
				$('#reword').text("작성완료")
				$('#reword').attr('class','badge btn-success');
			}
		});
		
		$.get("/chk/chkRequir/" + num,function(data){
			console.log("data",data);
			if(data == 0){
				$('#requir').text("작성중")
				$('#requir').attr('class','badge btn-primary');
			} else if(data == 1){
				$('#requir').text("작성완료")
				$('#requir').attr('class','badge btn-success');
			}
		});
		$.get("/chk/chkStory/" + num,function(data){
			console.log("data",data);
			if(data == 0){
				$('#story').text("작성중")
				$('#story').attr('class','badge btn-primary');
			} else if(data == 1){
				$('#story').text("작성완료")
				$('#story').attr('class','badge btn-success');
			}
		});
		$.get("/chk/chkMakersInfo/" + num,function(data){
			console.log("data",data);
			if(data == 0){
				$('#makersInfo').text("작성중")
				$('#makersInfo').attr('class','badge btn-primary');
			} else if(data == 1){
				$('#makersInfo').text("작성완료")
				$('#makersInfo').attr('class','badge btn-success');
			}
		});
		
		$('#submit').click(function(e){
			e.preventDefault();
			console.log('제출중...');
			var project_num = num;
			location.href="/maker/submitProject/" + num;
		})
	});
</script>

<body>
	<div class="container-fluid">
		<!-- 기본 요건 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						기본 요건 <span class="badge btn-success" id="requir"></span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnBasicrequir">작성</button>
			</div>
		</div>
		<!-- 기본 정보 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						기본 정보 <span class="badge btn-success" id='basic'></span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnBasicInfo">작성</button>
			</div>
		</div>
		<!-- 스토리 작성 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						스토리 작성 <span class="badge btn-primary" id="story"></span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnStory">작성</button>
			</div>
		</div>

		<!-- 리워드 설계 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						리워드 설계<span class="badge btn-secondary" id="reword"></span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnReword">작성</button>
			</div>
		</div>
		<!-- 메이커 정보 -->
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-body">
						메이커 정보 <span class="badge btn-secondary" id="makersInfo"></span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-success btn-block"
					id="btnMakerInfo">작성</button>
			</div>
		</div>

		<!-- 제출 버튼 -->
		<div class="row">
			<div class="col-md=12">
				<button class="btn btn-success" id="submit">제출</button>
			</div>
		</div>
	</div>
	