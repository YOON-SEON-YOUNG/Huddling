package com.kh.Portfolio_Huddling.member;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.Portfolio_Huddling.util.UploadFileUtils;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	@Resource(name="uploadPath")
	private String UploadPath;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() throws Exception {
		
		return "member/memberRegister";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVo memberVo,Model model) throws Exception {
		
		service.register(memberVo);
		model.addAttribute("memberVo",memberVo);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String postLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin() throws Exception {
		
		return "member/memberLogin";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(HttpSession session, MemberVo memberVo) throws Exception {
		MemberVo selectMemberVo = service.loginInfo(memberVo);
		session.setAttribute("memberVo", selectMemberVo);
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping(value = "/loginIdCheck", method = RequestMethod.POST)
	public int postLoginId(MemberVo memberVo) throws Exception {
		System.out.println("로그인아이디체크 실행");
		return service.loginId(memberVo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/loginPwCheck", method = RequestMethod.POST)
	public int postLoginPW(MemberVo memberVo) throws Exception {
		System.out.println("로그인비밀번호체크 실행");
		return service.loginPw(memberVo);
	}
	
	@RequestMapping(value = "/mypageMain", method = RequestMethod.GET)
	public String page() {
		
		return "member/memberMyPageMain";
	}
	
	@RequestMapping(value = "/myPageSupportControl", method = RequestMethod.GET)
	public String myPageSupportControl() {
		System.out.println("support 실행중..");
		return "member/include/myPageSupportControl";
	}
	
	@RequestMapping(value = "/myPageReadListControl", method = RequestMethod.GET)
	public String myPageReadListControl() {
		
		return "member/include/myPageReadListControl";
	}
	@RequestMapping(value = "/myPageQuestionControl", method = RequestMethod.GET)
	public String myPageQuestionControl() {
		
		return "member/include/myPageQuestionControl";
	}
	@RequestMapping(value = "/myPageChaetingControl", method = RequestMethod.GET)
	public String myPageChaetingControl() {
		
		return "member/include/myPageChaetingControl";
	}
	@RequestMapping(value = "/myPagePointControl", method = RequestMethod.GET)
	public String myPagePointControl() {
		
		return "member/include/myPagePointControl";
	}
	
	// 프로필 등록폼
	@RequestMapping(value = "/profileRegister", method = RequestMethod.GET)
	public String myPageProfileControl() {
		System.out.println("profile");
		return "member/include/myPageProfileControl";
	}
	
	// 프로필 등록처리
	@RequestMapping(value = "/profileRegister", method = RequestMethod.POST)
	public String postProfileRegister(MemberProfileVo profileVo, MultipartFile file) throws Exception {
		
		String imgUploadPath = UploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
			 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
			} else {
			 fileName = UploadPath + File.separator + "images" + File.separator + "none.png";
			}
		
		profileVo.setProfile_pic(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		profileVo.setProfile_ThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
		service.Profile_Register(profileVo);
		/*model.addAttribute("profileVo",profileVo);*/
		return "redirect:/";
	}
	


}
