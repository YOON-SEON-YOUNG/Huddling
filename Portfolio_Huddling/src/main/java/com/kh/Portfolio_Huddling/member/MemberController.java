package com.kh.Portfolio_Huddling.member;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.Portfolio_Huddling.util.UploadFileUtils;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() throws Exception {
		
		return "member/memberRegister";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVo memberVo,Model model,HttpSession session) throws Exception {
		
		
		service.register(memberVo);
		model.addAttribute("memberVo", memberVo);
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping(value = "/registerCheckId", method = RequestMethod.POST)
	public int registerCheckId(MemberVo memberVo) throws Exception {
		System.out.println("memberVoCheckId" + memberVo);
		return service.registerCheckId(memberVo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/registerCheckNick", method = RequestMethod.POST)
	public int registerCheckNick(MemberVo memberVo) throws Exception {
		System.out.println("memberVoCheckNick" + memberVo);
		return service.registerCheckNick(memberVo);
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
		MemberProfileVo profileVo =  service.selectMemberById(memberVo.getMember_id());
		session.setAttribute("memberVo", selectMemberVo);
		session.setAttribute("profileVo", profileVo);
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
	public int postLoginPw(MemberVo memberVo) throws Exception {
		System.out.println("로그인아이디체크 실행");
		
		return service.loginPw(memberVo);
	}
	@ResponseBody
	@RequestMapping(value = "/privacyUpdateName", method = RequestMethod.POST)
	public int privacyUpdateName(MemberVo memberVo) throws Exception {
		
		return service.privacyUpdateName(memberVo);
	}
	@ResponseBody
	@RequestMapping(value = "/privacyUpdatePw", method = RequestMethod.POST)
	public int privacyUpdatePw(MemberVo memberVo) throws Exception {
		
		return service.privacyUpdatePw(memberVo);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/privacyUpdateAddress", method = RequestMethod.POST)
	public int privacyUpdateAddress(MemberVo memberVo) throws Exception {
		
		return service.privacyUpdateAddress(memberVo);
	}
	@ResponseBody
	@RequestMapping(value = "/privacyUpdateCall", method = RequestMethod.POST)
	public int privacyUpdateCall(MemberVo memberVo) throws Exception {
		return service.privacyUpdateCall(memberVo);
	}
	@ResponseBody
	@RequestMapping(value = "/privacyUpdateEmail", method = RequestMethod.POST)
	public int privacyUpdateEmail(MemberVo memberVo) throws Exception {
		return service.privacyUpdateEmail(memberVo);
	}
	
	
	
	@RequestMapping(value = "/mypageMain", method = RequestMethod.GET)
	public String page(HttpSession session, Model model) throws Exception {
		MemberVo memberVo = (MemberVo) session.getAttribute("memberVo");
		String member_id = memberVo.getMember_id();
		MemberProfileVo profileVo = service.selectMemberById(member_id);
		model.addAttribute("profileVo", profileVo);
		return "member/memberMyPageMain";
	}
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(MemberVo memberVo,Model model) throws Exception {
		List<MemberVo> list = service.memberList(memberVo);
		model.addAttribute("list",list);
		System.out.println("list" + list);
		return "member/listAll";
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
	@RequestMapping(value = "/memberPrivacyUpdate", method = RequestMethod.GET)
	public String memberPrivacyUpdate() {
		
		return "member/memberPrivacyUpdate";
	}
	
	
	@RequestMapping(value = "/privacyUpdate", method = RequestMethod.POST)
	public String privacyUpdate(MemberVo memberVo,HttpSession session) throws Exception {
		
		
		service.memberPrivacyUpdate(memberVo);
		session.setAttribute("memberVo", memberVo);
		return "redirect:/";
	}
	
	

	
	// 프로필 등록폼

	@RequestMapping(value = "/profileRegister", method = RequestMethod.GET)
	public String myPageProfileControl() {
		System.out.println("profile");
//		service.selectMemberProfileread(profile_num)
		return "member/include/myPageProfileControl";
	}

	// 프로필 등록
	@RequestMapping(value = "/profileRegister", method = RequestMethod.POST)
	public String postProfileRegister(MemberProfileVo profileVo, MultipartFile file, Model model) throws Exception {

		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		System.out.println("profileVo:" + profileVo);
		
		if (file != null) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		String name = File.separator + "imgUpload" + ymdPath + File.separator + fileName;
		String fName = name.replace("\\", "/");
		
		profileVo.setProfile_pic(fName);
//		profileVo.setProfile_thumbimg(
//				File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);

		service.Profile_Register(profileVo);
		 model.addAttribute("profileVo",profileVo); 
		return "redirect:/";
	}

	
	
	 @RequestMapping(value = "/displayFile", method =  RequestMethod.GET)
		@ResponseBody
		public byte[] displayFile(@RequestParam("fileName") String fileName) throws Exception {
			String realPath = uploadPath + File.separator + fileName.replace("/", "\\");
			System.out.println("realPath:"+ realPath);
			FileInputStream is = new FileInputStream(realPath);
			byte[] bytes = IOUtils.toByteArray(is);
			is.close();
			return bytes;
		}


}
