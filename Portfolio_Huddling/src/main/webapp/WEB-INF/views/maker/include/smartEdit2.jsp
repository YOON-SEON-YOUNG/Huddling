<%@page import="com.kh.Portfolio_Huddling.util.FileUploadUtil"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Smart Editor -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/se2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
	charset="utf-8"></script>
 
<!-- Smart Editor -->
<script type="text/javascript">
 
var oEditors = [];
$(function(){
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "textAreaContent",
    sSkinURI: "<%=request.getContextPath()%>/resources/se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
	});
});
 
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
  
    try {
    $('#frm').submit();
	formsave("tempDataStory");
		console.log('success');
    } catch(e) {
     
    }
}
// textArea에 이미지 첨부
function pasteHTML(filepath){
	console.log("filepath:" + filepath);
	var path = "/resources/upload/" + filepath;
	var sHTML = "<img data-imgName='"+filepath+"' src='" + path + "'/>";
    oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);

// 	$.ajax({
// 		"url":'/maker/imgCopy/1',
// 		'data':filepath,
// 		'type':'post',
// 		'success':function(data){
// 			console.log('success');
// 			console.log("data",data);
// 			}
// 		});
}
 
</script>
<form id="frm">
	<textarea style="width: 100%" rows="10" name="story_storyBoard"
		id="textAreaContent" cols="80">${storyDto.story_storyBoard }</textarea>
</form>

