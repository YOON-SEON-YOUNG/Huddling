package com.kh.Portfolio_Huddling.member;

import java.util.List;

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

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService service;
	
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
	@RequestMapping(value = "/memberPrivacyUpdate", method = RequestMethod.GET)
	public String memberPrivacyUpdate() {
		
		return "member/memberPrivacyUpdate";
	}
	
	
	@RequestMapping(value = "/privacyUpdate", method = RequestMethod.POST)
	public String privacyUpdate(MemberVo memberVo,HttpSession session) {
		
		
		try {
			service.memberPrivacyUpdate(memberVo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("memberVo", memberVo);
		return "redirect:/";
	}
	
	

}
