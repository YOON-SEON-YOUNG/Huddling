package com.kh.Portfolio_Huddling.util;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;

public class FileUploadUtil {

	public static String uploadFile(String uploadPath, String originalName, 
									byte[] fileData) throws Exception {
		UUID uuid = UUID.randomUUID(); // 겹치지 않는 고유한 값 생성
		System.out.println("uuid:"+ uuid);
		String uuidName = uuid + "_" + originalName;
		System.out.println("uuidName:" + uuidName);
		String datePath = calcPath(uploadPath);
		String filePath = uploadPath + File.separator 
						+ datePath + File.separator 
						+ uuidName; // D:/upload/2020/1/20/<uuid>_파일명
		File target = new File(filePath);
		FileCopyUtils.copy(fileData, target);
		String formatName = getFormatName(originalName);
		System.out.println("formatName:" + formatName);
		boolean isImage = isImage(formatName);
		System.out.println("isImage:" + isImage);
		// 2020/1/20/<uuid>_filename
		return datePath + File.separator + uuidName;
	}
	
	// 날짜에 해당하는 폴더 계산 -> 2020/1/20
	public static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		String yearPath = "" + cal.get(Calendar.YEAR); // "2020"
		String monthPath = yearPath + File.separator 
							+ (cal.get(Calendar.MONTH) + 1); // 2020/1
		String datePath = monthPath + File.separator 
							+ cal.get(Calendar.DATE); // 2020/1/20
		System.out.println("datePath: " + datePath);
		String dirPath = uploadPath + File.separator + datePath; // D:/upload/2020/1/20
		File f = new File(dirPath);
		// 해당 경로(폴더)가 존재하지 않으면 생성
		if (!f.exists()) {
			f.mkdirs(); // 하위 폴더까지 생성
		}
		return datePath;
	}
	
	public static String getFormatName(String fileName) {
		int dotIndex = fileName.lastIndexOf(".");
		String formatName = fileName.substring(dotIndex + 1);
		return formatName;
	}
	
	public static boolean isImage(String formatName) {
		String[] arrFormat = { "JPG", "PNG", "GIF" };
		for (String aFormat : arrFormat) {
			if (formatName.toUpperCase().equals(aFormat)) {
				return true;
			}
		}
		return false;
	}
	
	// 파일 삭제
	public static void delete(List<String> fileNames, String uploadPath) throws Exception {
		for (String fileName : fileNames) {
			String filePath = uploadPath + File.separator + fileName.replace("/", "\\");
			File f = new File(filePath);
			if (f.exists()) {
				f.delete();
			}
			String formatName = FileUploadUtil.getFormatName(fileName);
			boolean isImage = FileUploadUtil.isImage(formatName);
			System.out.println("isImage:" + isImage);
			if (isImage == true) {
				// 2020/1/21/436baa6d-eefc-417a-b8bf-eb2559c3bd2e_Desert.jpg
				int slashIndex = fileName.lastIndexOf("/");
				String front = fileName.substring(0, slashIndex + 1);
				String rear = fileName.substring(slashIndex + 1);
				String thumbnailName = front + "s_" + rear;
				String thumbnailPath = uploadPath + File.separator 
									 + thumbnailName.replace("/", "\\");
				System.out.println("thumbnailPath:" + thumbnailPath);
				File fThumb = new File(thumbnailPath);
				if (fThumb.exists()) {
					System.out.println("exists");
					fThumb.delete();
				} // if
			} // if
		} // for
	}
}
