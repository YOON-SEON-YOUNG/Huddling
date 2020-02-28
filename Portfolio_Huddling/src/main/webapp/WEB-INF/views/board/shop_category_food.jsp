<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- include 로고, 검색, 로그인, 카테고리 -->
<%@ include file="include/board_header.jsp"%>
<!-- 헤더 부트스트랩-->
<link href="/resources/main/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/style.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/font-awesome.css" rel="stylesheet"> 
<script src="/resources/js/projectShow.js"></script>
<!--  // 헤더 -->
<script>
$(document).ready(function(){
	$("#project_search").click(function() {
		if ($("#project_search_input").val() != null && $("#project_search_input").val() != "") {
			console.log("검색 test");
			projectSearch($("#project_search_input").val());
		}
	});
	
	$("#project_search_input").keydown(function(key) {
		if ($("#project_search_input").val() != null && $("#project_search_input").val() != "") {
			if (key.keyCode == 13) {
				console.log("검색 test");
				projectSearch($("#project_search_input").val());
			}
		}
	});
	
	function projectSearch(name) {
		arrProject = new Array();
		moreShoeNum = 0;
		var sData = {
			"project_name" : name,
			"project_category" : "food"
		};
		$.get("/board/projectSearchCategory", sData, function(rData) {
			$("#newList").empty();
			$.each(rData, function(index) {
				var pVo = rData[index];
				var project_num = pVo.project_num;
				var project_category = pVo.project_category;
				var project_image = pVo.project_image;
				var project_story = pVo.project_story;
				var project_name = pVo.project_name;
				var project_app = pVo.project_app;
				arrStrPush(project_num, project_category, project_image, project_story, project_name, project_app);
			});
			showProject();
		});
	}
	
	var sData ={"project_category" : "food"};
	$.get("/board/categoryRead",sData, function(rData) {
		console.log(rData);
		
		$.each(rData, function(index) {
			var pVo = rData[index];
			var project_num = pVo.project_num;
			var project_category = pVo.project_category;
			var project_image = pVo.project_image;
			var project_story = pVo.project_story;
			var project_name = pVo.project_name;
			var project_app = pVo.project_app;
			arrStrPush(project_num, project_category, project_image, project_story, project_name, project_app);
		});
		showProject();
	});
	
	
});
</script>

</head>
<body>
<div class="container-fluid">.
<br>      	
<!-- 카테고리 -->
 	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" align="center">
			<a href="/">
				<button class="btn btn btn-secondary  btn-lg mb50" type="button">
					전체 테마
				</button>
			</a>
			<a href="/board/categoryTech">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					테크/가전
				</button> 
			</a>
			<a href="/board/categoryBeauty">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					패션/뷰티
				</button> 
			</a>
			<a href="/board/categoryFood">
				<button class="btn btn-primary  btn-lg mb50" type="button">
					푸드
				</button> 
			</a>
			<a href="/board/categoryCulture">
				<button class="btn btn-secondary  btn-lg mb50" type="button">
					문화
				</button>
			</a>
<!-- 			<a href="/board/categoryDonate"> -->
<!-- 				<button class="btn btn-secondary  btn-lg mb50" type="button"> -->
<!-- 					기부/후원 -->
<!-- 				</button> -->
<!-- 			</a> -->
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<br>
	<br>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" style="float: left;" id="newList">
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<%@ include file="include/board_footer.jsp" %>