package com.kh.Portfolio_Huddling.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.maker.TempMakerBasicDto;
import com.kh.Portfolio_Huddling.maker.TempMakerBoardImgDto;
import com.kh.Portfolio_Huddling.maker.TempMakerBoardService;
import com.kh.Portfolio_Huddling.maker.TempMakerMakersDto;
import com.kh.Portfolio_Huddling.maker.TempMakerRequirDto;
import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;
import com.kh.Portfolio_Huddling.maker.TempMakerStoryDto;
import com.kh.Portfolio_Huddling.project.ProjectVo;
import com.kh.Portfolio_Huddling.util.FileUploadUtil;

@Controller
@RequestMapping("/maker/*")
public class MakerBoardController {

	@Inject
	private TempMakerBoardService makerService;
	
	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public String intro(HttpServletRequest request,
			Model model) throws Exception{
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		System.out.println("로그인 아이디 : " + member_id);
		List<ProjectVo> list = makerService.makerGetIntroList(member_id);
		model.addAttribute("list",list);
		return "maker/maker_intro";
	}
	
	@RequestMapping(value = "/createBoard", method = RequestMethod.GET)
	public String createBoard(String member_id,HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		member_id = (String)session.getAttribute("member_id");
		int num = makerService.makerCreateBoard(member_id);
		System.out.println("createBoard :" + num);
		return "redirect: home/" + num;
	}

	@RequestMapping(value = "/home/{num}", method = RequestMethod.GET)
	public String board(@PathVariable("num")int projectNum, HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("home 실행중...");
		session.setAttribute("projectNum", projectNum);
		System.out.println("프로젝트 번호 : "+ projectNum);
		return "maker/maker_home";
	}

	@RequestMapping(value = "/requir/{num}", method = RequestMethod.GET)
	public String requir(Model model, @PathVariable("num")int requirNum) throws Exception {
		TempMakerRequirDto requirDto = makerService.tempRequirLoad(requirNum);
		model.addAttribute("requirDto", requirDto);
		System.out.println("DTO :" + requirDto);
		System.out.println("requir 실행중...");
		return "maker/maker_requir";
	}

	@RequestMapping(value = "/info/{num}", method = RequestMethod.GET)
	public String basicInfo(Model model, @PathVariable("num")int basicNum,
			HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		basicNum = (Integer)session.getAttribute("projectNum");
		TempMakerBasicDto basicDto = makerService.tempBasicLoad(basicNum);
		model.addAttribute("basicDto", basicDto);
		System.out.println("info 실행중...");
		return "maker/maker_basicInfo";
	}

	@RequestMapping(value = "/story/{num}", method = RequestMethod.GET)
	public String story(Model model, @PathVariable("num")int storyNum) throws Exception {
		TempMakerStoryDto storyDto = makerService.tempStoryLoad(storyNum);
		model.addAttribute("storyDto", storyDto);
		System.out.println("story 실행중...");
		return "maker/maker_productStory";
	}
	
	@RequestMapping(value = "/reword/{num}", method = RequestMethod.GET)
	public String reword(Model model, @PathVariable("num")int projectNum) throws Exception {
		System.out.println("reword 실행중...");
		List<TempMakerRewordDto> list = makerService.rewordList(projectNum);
		System.out.println("list : " + list);
		model.addAttribute("list",list);
		return "maker/maker_reword";
	}

	@RequestMapping(value = "/makerInfo/{num}", method = RequestMethod.GET)
	public String makerInfo(Model model, @PathVariable("num")int makerInfoNum) throws Exception{
		TempMakerMakersDto makersDto = makerService.tempLoadMakersInfo(makerInfoNum);
		System.out.println("makerInfo 실행중...");
		model.addAttribute("makersDto",makersDto);
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
		makerService.tempRequirUpdate(mkrDto);
		return mkrDto;
	}

	@RequestMapping(value = "/tempDataBasicInfo", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerBasicDto data(TempMakerBasicDto basicDto) throws Exception {
		makerService.tempBasicUpdate(basicDto);
		return basicDto;
	}

	@RequestMapping(value = "/preview/{num}", method = RequestMethod.GET)
	public String preview(@PathVariable("num")int num, TempMakerStoryDto storyDto, Model model) throws Exception {
		storyDto = makerService.tempStoryLoad(num);
		model.addAttribute("storyDto", storyDto);
		return "maker/preview";
	}

	@RequestMapping(value = "/tempDataStory", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerStoryDto data(/*HttpServletRequest request, */TempMakerStoryDto storyDto) throws Exception {
		makerService.tempStoryUpdate(storyDto);
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
			System.out.println("업로드할 파일 없음...");
		} else {
		// 복사할 파일 경로
					String orgFilePath = session.getServletContext().getRealPath("/") + "resources\\upload\\" + imgName; // 경로명
					System.out.println("orgFilePath" + orgFilePath);
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
					makerService.tempInputImgName(imgDto);
					try {
						// 입력용
						FileInputStream fileInputStream = new FileInputStream(orgFilePath);
						System.out.println("fis :" + fileInputStream );
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
		}
		System.out.println("서버 저장 완료...");
		return "maker/data";
	}

	// 서버 이미지 로컬 저장
	@RequestMapping(value = "/imgLoad/{num}", method = RequestMethod.GET)
	public String outputImg(HttpServletRequest request, @PathVariable("num") int num) throws Exception {
		System.out.println("서버에서 이미지 가져오는중...");
		List<TempMakerBoardImgDto> list = makerService.imgNameList(num);
		int count = 0;
		while (count < list.size()) {
			String fileName = list.get(count).getImglist_name();
			System.out.println("가져올 이미지 확인...");
			if(fileName == null || fileName.equals("")) {
				System.out.println("가져올 이미지 없음...");
			} else {
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
			}
			count += 1;
		}
		System.out.println("로컬 저장 완료...");
		return "maker/data";
	}
	@RequestMapping(value="/rewordInput", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerRewordDto data(TempMakerRewordDto rewordDto) throws Exception{
		System.out.println("rewordDto:" + rewordDto);
	System.out.println("리워드 저장 중...");	
	makerService.tempInputReword(rewordDto);
	System.out.println("리워드 저장 완료...");
	return rewordDto;
	}
	
	@RequestMapping(value="/rewordOutput/{num}", method = RequestMethod.GET)
	@ResponseBody
	public TempMakerRewordDto data(@PathVariable("num") int rewordNum) throws Exception{
		TempMakerRewordDto rewordDto = makerService.tempOutputReword(rewordNum);
		System.out.println("reword/dto:" + rewordDto);
		return rewordDto;
	}
	
	@RequestMapping(value="/rewordUpdate/{num}",method = RequestMethod.POST)
	public void rewordUpdate(TempMakerRewordDto rewordDto, @PathVariable("num")int rewordNum) throws Exception {
		System.out.println("update : " + rewordDto);
		rewordDto.setTemp_reword_num(rewordNum);
		System.out.println("리워드 수정 중....");
		makerService.tempRewordUpdate(rewordDto);
		System.out.println("리워드 수정 완료...");
	}
	
	@RequestMapping(value="/rewordDelete/{num}", method = RequestMethod.POST)
	@ResponseBody
	public void rewordDelete(@PathVariable("num")int rewordNum) throws Exception{
		System.out.println("삭제 중...");
		makerService.tempRewordDelete(rewordNum);
		System.out.println("삭제 완료...");
	}
	
	@RequestMapping(value="/tempDataMakersInfo", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerMakersDto data(TempMakerMakersDto makersDto) throws Exception{
		System.out.println("메이커 정보 저장중...");
		makerService.tempMakersInfoUpdate(makersDto);
		System.out.println("메이커 정보 저장 완료...");
		return makersDto;
	}
	
	
	@RequestMapping(value="/submitProject/{num}", method = RequestMethod.GET)
	public String submitProject(@PathVariable("num")int project_num) throws Exception{
		System.out.println("제출중....");
		System.out.println("num : " + project_num);
		makerService.submitProject(project_num);
		return "redirect: /maker/intro";
	}
}