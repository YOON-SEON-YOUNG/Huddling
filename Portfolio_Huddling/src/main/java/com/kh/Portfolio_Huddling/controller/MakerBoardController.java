package com.kh.Portfolio_Huddling.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.maker.TempMakerBasicDto;
import com.kh.Portfolio_Huddling.maker.TempMakerBoardImgDto;
import com.kh.Portfolio_Huddling.maker.TempMakerBoardService;
import com.kh.Portfolio_Huddling.maker.TempMakerRequirDto;
import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;
import com.kh.Portfolio_Huddling.maker.TempMakerStoryDto;
import com.kh.Portfolio_Huddling.util.FileUploadUtil;

@Controller
@RequestMapping("/maker/*")
public class MakerBoardController {

	@Inject
	private TempMakerBoardService tempService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String board() {
		System.out.println("home 실행중...");
		return "maker/maker_home";
	}

	@RequestMapping(value = "/requir", method = RequestMethod.GET)
	public String requir(Model model) throws Exception {
		int TempRequirNum = 1;
		TempMakerRequirDto requirDto = tempService.tempRequirLoad(TempRequirNum);
		model.addAttribute("requirDto", requirDto);
		System.out.println("DTO :" + requirDto);
		System.out.println("requir 실행중...");
		return "maker/maker_requir";
	}

	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String basicInfo(Model model) throws Exception {
		int TempBasicNum = 1;
		TempMakerBasicDto basicDto = tempService.tempBasicLoad(TempBasicNum);
		model.addAttribute("basicDto", basicDto);
		System.out.println("info 실행중...");
		return "maker/maker_basicInfo";
	}

	@RequestMapping(value = "/story", method = RequestMethod.GET)
	public String story(Model model) throws Exception {
		int tempStoryNum = 1;
		TempMakerStoryDto storyDto = tempService.tempStoryLoad(tempStoryNum);
		model.addAttribute("storyDto", storyDto);
		System.out.println("story 실행중...");
		return "maker/maker_productStory";
	}

	@RequestMapping(value = "/reword")
	public String reword() {
		System.out.println("reword 실행중...");
		return "maker/maker_reword";
	}

	@RequestMapping(value = "/policy", method = RequestMethod.GET)
	public String policy() {
		System.out.println("policy 실행중...");
		return "maker/maker_policy";
	}

	@RequestMapping(value = "/makerInfo")
	public String makerInfo() {
		System.out.println("makerInfo 실행중...");
		return "maker/maker_makerInfo";
	}

	@RequestMapping(value = "/tempDataRequir", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerRequirDto data(TempMakerRequirDto mkrDto) throws Exception {
		if (mkrDto.getRequir_q1() == null) {
			mkrDto.setRequir_q1("false");
		}
		;
		if (mkrDto.getRequir_q4() == null) {
			mkrDto.setRequir_q4("false");
		}
		;
		tempService.tempRequirUpdate(mkrDto);
		return mkrDto;
	}

	@RequestMapping(value = "/tempDataBasicInfo", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerBasicDto data(TempMakerBasicDto basicDto) throws Exception {
		tempService.tempBasicUpdate(basicDto);
		return basicDto;
	}

	@RequestMapping(value = "/preview", method = RequestMethod.GET)
	public String preview(TempMakerStoryDto storyDto, Model model) throws Exception {
		int tempStoryNum = 1;
		storyDto = tempService.tempStoryLoad(tempStoryNum);
		model.addAttribute("storyDto", storyDto);
		return "maker/preview";
	}

	@RequestMapping(value = "/tempDataStory", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerStoryDto data(HttpServletRequest request, TempMakerStoryDto storyDto) throws Exception {
		String story_storyBoard = request.getParameter("story_storyBoard");
		storyDto.setStory_storyBoard(story_storyBoard);
		tempService.tempStoryUpdate(storyDto);
		return storyDto;
	}

	// 로컬 이미지 서버 저장
	@RequestMapping(value = "/imgCopy/{num}", method = RequestMethod.GET)
	public String inputImg(HttpServletRequest request, @PathVariable("num") int num) throws Exception {
		HttpSession session = request.getSession();
		// 업로드할 파일 이름
		String imgName = (String) session.getAttribute("filename");
		System.out.println("업로드 할 파일 있는지 확인...");
		//파일 업로드
		if (imgName == null || imgName.equals("")) {
			// 복사할 파일 경로
			String orgFilePath = session.getServletContext().getRealPath("/") + "resources\\upload\\" + imgName; // 경로명
			String filePath = "//192.168.0.34/upload/team4/makerUpload/";
			String fileDir = FileUploadUtil.calcPath(filePath);

			// 복사될 파일 경로
			String copyFilePath = filePath + fileDir + "/" + imgName;
			TempMakerBoardImgDto imgDto = new TempMakerBoardImgDto();
			imgDto.setTemp_imglist_num(num);

			// 이미지 이름이 Null값이거나 공백인 경우 처리
			if (imgName == null || imgName.equals("")) {
				imgDto.setImglist_name(" ");
			} else {
				imgDto.setImglist_name(imgName);
			}
			tempService.tempInputImgName(imgDto);
			try {
				// 입력용
				FileInputStream fileInputStream = new FileInputStream(orgFilePath);
				BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);

				// 출력용
				FileOutputStream fileOutputStream = new FileOutputStream(copyFilePath);
				BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);

				int data = 0;
				while ((data = bufferedInputStream.read()) != -1) {
					bufferedOutputStream.write(data);
				}
				bufferedInputStream.close();
				bufferedOutputStream.close();
				System.out.println("복사 완료...");
				session.removeAttribute("filename");
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("업로드할 파일 없음...");
		}
		System.out.println("서버 저장 완료...");
		return "maker/data";
	}

	// 서버 이미지 로컬 저장
	@RequestMapping(value = "/imgLoad/{num}", method = RequestMethod.GET)
	public String outputImg(HttpServletRequest request, @PathVariable("num") int num) throws Exception {
		System.out.println("서버에서 이미지 가져오는중...");
		List<TempMakerBoardImgDto> list = tempService.imgNameList(num);
		int count = 0;
		while (count < list.size()) {
			String fileName = list.get(count).getImglist_name();
			System.out.println("가져올 이미지 확인...");
			if(fileName == null || fileName.equals("")) {
			// 서버 파일 경로
			String filePath = "//192.168.0.34/upload/team4/makerUpload/";
			Calendar cal = Calendar.getInstance();

			// Folder Dir
			String yearPath = "" + cal.get(Calendar.YEAR);
			String monthPath = yearPath + File.separator + (cal.get(Calendar.MONTH) + 1);
			String datePath = monthPath + File.separator + cal.get(Calendar.DATE);
			String dirPath = filePath + File.separator + datePath;

			// 서버 파일 경로
			String orgFilePath = dirPath + "/" + fileName;
			// 로컬 파일 경로
			String copyFilePath = request.getSession().getServletContext().getRealPath("/") + "resources\\upload\\"
					+ fileName;

			// 입력
			FileInputStream fileInputStream = new FileInputStream(orgFilePath);
			BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
			// 출력
			FileOutputStream fileOutputStream = new FileOutputStream(copyFilePath);
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);

			int data = 0;
			while ((data = bufferedInputStream.read()) != -1) {
				bufferedOutputStream.write(data);
			}
			bufferedInputStream.close();
			bufferedOutputStream.close();
			} else {
				System.out.println("가져올 이미지 없음...");
			}
			count += 1;
		}
		System.out.println("로컬 저장 완료...");
		return "maker/data";
	}
	
	@RequestMapping(value="/rewordInput", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerRewordDto data(TempMakerRewordDto rewordDto) throws Exception{
	System.out.println("리워드 저장 중...");	
	tempService.tempInputReword(rewordDto);
	System.out.println("리워드 저장 완료...");
	return rewordDto;
	}
	@RequestMapping(value="/rewordLoad", method = RequestMethod.GET)
	public void data1(TempMakerRewordDto rewordDto) throws Exception{
		
	}

}