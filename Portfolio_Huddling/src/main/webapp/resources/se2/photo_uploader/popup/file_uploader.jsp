<%@page import="com.kh.Portfolio_Huddling.util.FileUploadUtil"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentTyp	e="text/html; charset=UTF-8"%>
<%
//날짜에 해당하는 폴더 계산 -> 2020/1/20
String uploadPath = "//192.168.0.34/upload/team4/"; // 이미지가 저장될 주소
String filename = "";
String path = FileUploadUtil.calcPath(uploadPath);
String paths = path.replace("\\", "/");
String uploadPaths = uploadPath.replace("\\","/");
String filePath = uploadPaths + paths;
System.out.println("paths : " + filePath);
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
		
		MultipartRequest multi=new MultipartRequest(request, filePath, 15*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
	
		java.text.SimpleDateFormat formatter2 = new java.text.SimpleDateFormat ("yyyy_MM_dd_HHmmss", java.util.Locale.KOREA);
		int cnt = 1;
		String upfile = (multi.getFilesystemName("Filedata"));
		if (!upfile.equals("")) {
			String dateString = formatter2.format(new java.util.Date());
			String moveFileName = dateString + upfile.substring(upfile.lastIndexOf(".") );
			String fileExt = upfile.substring(upfile.lastIndexOf(".") + 1);
			File sourceFile = new File(filePath + File.separator + upfile);
			File targetFile = new File(filePath + File.separator + moveFileName);
			sourceFile.renameTo(targetFile);
			filename = moveFileName;
			System.out.println("upfile : " + upfile); // 업로드 원본 이름
			System.out.println("targetFile : " + targetFile); // 업로드 원본의 저장될 위치 + 저장 날짜 + 변환 이름
			System.out.println("moveFileName : " + moveFileName); // 저장 날짜 + 변환 이름
			System.out.println("filename : " + filename);
			
			sourceFile.delete();
			
			%>
<form id="fileform" name="fileform" method="post">
	<input type="hidden" name="filename" value="<%=filename%>">
	<input type="hidden" name="path" value="<%=filePath%>">
	<input	type="hidden" name="fcode" value="<%=filePath%>">
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
