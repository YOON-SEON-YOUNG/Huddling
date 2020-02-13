package com.kh.Portfolio_Huddling.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		
		return "member/register";
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
	
	
}
