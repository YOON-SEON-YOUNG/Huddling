/**
 * 
 */

//var project_num = pVo.project_num;
//var project_category = pVo.project_category;
//var project_image = pVo.project_image;
//var project_story = pVo.project_story;
//var project_name = pVo.project_name;
//var project_app = pVo.project_app;
			
			
function arrStrPush(project_num, project_category, project_image, project_story, project_name, project_app) {
		var strList = "";
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
		strList += "<a class='btn btn-primary  btn-lg mb30' href='/detail/detailMain/"+project_num+"'>펀딩하러가기</a>";
		strList +="</p> </div> </div> </div>";
		arrProject.push(strList);
}

// 더보기 처리 상단
	var arrProject = new Array();
	var moreShoeNum = 0;
	
	function showProject() {
		for (var i = moreShoeNum; i < (moreShoeNum+6); i++) {
			$("#newList").append(arrProject[i]);
		}
		moreShoeNum = moreShoeNum + 6;
	}
	
	// 스크롤이 최하단일때
	$(window).scroll(function(){
		  if($(document).height() <= $(window).scrollTop() + $(window).height()){
		  	showProject();
		  }
	});
// 더보기 처리 하단
	
