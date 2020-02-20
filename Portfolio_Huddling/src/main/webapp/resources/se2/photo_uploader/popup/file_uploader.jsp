<%@page import="com.kh.Portfolio_Huddling.util.FileUploadUtil"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%

//날짜에 해당하는 폴더 계산 -> 2020/1/20
// String u = "/resources/upload/"; // 이미지가 저장될 주소
String uploadPath = application.getRealPath("/") + "resources\\upload";
String calcPath = FileUploadUtil.calcPath(uploadPath);
File f1 = new File(uploadPath);
if (!f1.exists()) {
	f1.mkdir();
}

// System.out.println("uploadPath:" + f1.getAbsolutePath());
String filename = "";

if(request.getContentLength() > 10*1024*1024 ){
%>
<script>
	alert("업로드 용량(총 10Mytes)을 초과하였습니다.");
	history.back();
</script>
<%
	return;
} else {
	try {
		MultipartRequest multi=new MultipartRequest(request, uploadPath, 15*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
		java.text.SimpleDateFormat formatter2 = new java.text.SimpleDateFormat ("yyyy_MM_dd_HHmmss", java.util.Locale.KOREA);
		int cnt = 1;
		String upfile = (multi.getFilesystemName("Filedata"));
		if (!upfile.equals("")) {
			String dateString = formatter2.format(new java.util.Date());
			String moveFileName = dateString + upfile.substring(upfile.lastIndexOf(".") );
			String fileExt = upfile.substring(upfile.lastIndexOf(".") + 1);
			File sourceFile = new File(uploadPath + File.separator + upfile);
			File targetFile = new File(uploadPath + File.separator + moveFileName);
			sourceFile.renameTo(targetFile);
			filename = moveFileName;
			System.out.println("upfile : " + upfile); // 업로드 원본 이름
			System.out.println("targetFile : " + targetFile); // 업로드 원본의 저장될 위치 + 저장 날짜 + 변환 이름
			System.out.println("moveFileName : " + moveFileName); // 저장 날짜 + 변환 이름
			System.out.println("filename : " + filename);
			session.setAttribute("filename", filename);
			sourceFile.delete();
			
			%>
<form id="fileform" name="fileform" method="post">
	<input type="hidden" name="filename" value="<%=filename%>">
	<input type="hidden" name="path" value="<%=uploadPath%>">
	<input	type="hidden" name="fcode" value="<%=uploadPath%>">
</form>

<%
		}
	} catch (Exception e) {
		System.out.println("e : " + e.getMessage());
	}
}
%>

<script type="text/javascript">
	function fileAttach() {
		f = document.fileform;
		fpath = f.path.value;
		fname = f.filename.value;
		fcode = fpath + fname;

		try {
			window.opener.pasteHTML(fname);

			window.close();
		} catch (e) {
			//             alert(e); 
		}
	}
	fileAttach();
	this.window.close();
</script>
<script>
$(function(){
	var filename = $('input[name=filename]]').val();
	console.log("filename:",filename);
});
</script>