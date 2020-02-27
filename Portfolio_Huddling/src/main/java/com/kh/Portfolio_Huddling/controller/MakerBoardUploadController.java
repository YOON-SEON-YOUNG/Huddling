package com.kh.Portfolio_Huddling.controller;

import java.io.File;
import java.io.FileInputStream;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.Portfolio_Huddling.util.FileUploadUtil;

@Controller
@RequestMapping("/upload")
public class MakerBoardUploadController {
	
	@Resource
	private String uploadPath;
	
	@RequestMapping(value = "/intro_img", method = RequestMethod.POST, produces="text/plain; charset=utf-8")
	@ResponseBody
	public String upload(MultipartFile file,HttpServletRequest request) throws Exception{
		System.out.println("path? : " + uploadPath);
		System.out.println("파일 업로드 중...");
		String originalName = file.getOriginalFilename();
		String dirPath = FileUploadUtil.uploadFile(uploadPath, originalName, file.getBytes());
		System.out.println("dirPath" + dirPath);
		String path = dirPath.replace("\\", "/");
		System.out.println("파일 업로드 성공...");
		return path;
	};
	
	@RequestMapping(value = "/imgView", method =  RequestMethod.GET)
	@ResponseBody
	public byte[] displayFile(@RequestParam("fileName") String fileName) throws Exception {
		System.out.println("fileName : " + fileName);
		if(fileName == null || fileName.equals("")) {
		System.out.println("리턴 값 없음...");
		fileName="makerUpload\\default.png";
		}
		String realPath = uploadPath + File.separator + fileName.replace("/", "\\");
		System.out.println("realPath:"+ realPath);
		FileInputStream fileInputStream = new FileInputStream(realPath);
		byte[] bytes = IOUtils.toByteArray(fileInputStream);
		System.out.println("bytes :" + bytes);
		fileInputStream.close();
		return bytes;
		}
}