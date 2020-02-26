<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- include 로고, 검색, 로그인, 카테고리 -->
<%@ include file="include/board_header.jsp"%>
<!-- 헤더 부트스트랩-->
<link href="/resources/main/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/style.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/font-awesome.css" rel="stylesheet"> 
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
		var sData = {
			"project_name" : name,
			"project_category" : "donate"
		};
		$.get("/board/projectSearchCategory", sData, function(rData) {
			$("#newList").empty();
			var strList = "<br><br>";
			$.each(rData, function(index) {
				var pVo = rData[index];
				var project_num = pVo.project_num;
				var project_category = pVo.project_category;
				var project_image = pVo.project_image;
				var project_story = pVo.project_story;
				var project_name = pVo.project_name;
				var project_app = pVo.project_app;
				strList +="<div class='col-md-4'>";
				strList +="<img class='card-img-top' alt='Bootstrap Thumbnail First' src='/resources/images/thumbnail_01.jpg'"; 
				strList += "style='max-width: 100%; height: auto;'/>";
				strList +="<div class='card-block'>";
				strList +="<h5 class='card-title'>";
				strList += project_name +"|"+ project_story;
				strList +="<br>";
				strList +="</h5>";
				strList +="<div class='progress' style='padding: 5px 0px 0px 0px; margin:5px;'>";
				strList +="<div class='progress-bar w-75'>";
				strList +="</div> </div> <p>";
				strList += "<a class='btn btn-primary  btn-lg mb30' href='detail/detailMain/"+project_num+"'>펀딩하러가기</a>";
				strList +="</p> </div> </div> </div>";
			});
			$("#newList").append(strList);
		});
	}
	
	var sData ={"project_category" : "donate"};
	$.get("/board/categoryRead",sData, function(rData) {
		console.log(rData);
		var strList = "";
		$.each(rData, function(index) {
			var pVo = rData[index];
			var project_num = pVo.project_num;
			var project_category = pVo.project_category;
			var project_image = pVo.project_image;
			var project_story = pVo.project_story;
			var project_name = pVo.project_name;
			var project_app = pVo.project_app;
			strList +="<div class='col-md-4'>";
			strList +="<img class='card-img-top' alt='Bootstrap Thumbnail First' src='/resources/images/thumbnail_01.jpg'"; 
			strList += "style='max-width: 100%; height: auto;'/>";
			strList +="<div class='card-block'>";
			strList +="<h5 class='card-title'>";
			strList += project_name +"|"+ project_story;
			strList +="<br>";
			strList +="</h5>";
			strList +="<div class='progress' style='padding: 5px 0px 0px 0px; margin:5px;'>";
			strList +="<div class='progress-bar w-75'>";
			strList +="</div> </div> <p>";
			strList += "<a class='btn btn-primary  btn-lg mb30' href='detail/detailMain/"+project_num+"'>펀딩하러가기</a>";
			strList +="</p> </div> </div> </div>";
		});
		$("#newList").append(strList);
	});
	

});
</script>

</head>
<body>
<div class="container-fluid">
		<!-- 카테고리 -->
		<br />
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" align="center">
				<a href="/">
					<button class="btn btn btn-secondary  btn-lg mb50" type="button">
						전체 테마</button>
				</a> <a href="/board/categoryTech">
					<button class="btn btn-secondary  btn-lg mb50" type="button">
						테크/가전</button>
				</a> <a href="/board/categoryBeauty">
					<button class="btn btn-secondary  btn-lg mb50" type="button">
						패션/뷰티</button>
				</a> <a href="/board/categoryFood">
					<button class="btn btn-secondary  btn-lg mb50" type="button">
						푸드</button>
				</a> <a href="/board/categoryCulture">
					<button class="btn btn-secondary  btn-lg mb50" type="button">
						문화</button>
				</a> <a href="/board/categoryDonate">
					<button class="btn btn-primary  btn-lg mb50" type="button">
						기부/후원</button>
				</a>
			</div>
			<div class="col-md-2"></div>
		</div>
		
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" style="float: left;" id="newList">
			<br>
			<br>
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<%@ include file="include/board_footer.jsp" %>