package com.kh.Portfolio_Huddling.manager;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.Portfolio_Huddling.member.MemberService;
import com.kh.Portfolio_Huddling.member.MemberVo;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	@Inject
	private MemberService service;
	
	@RequestMapping(value = "/mainPage", method = RequestMethod.GET)
	public String page() {
		
		return "manager/managerMainPage";
	}
	
	@RequestMapping(value = "/userControl", method = RequestMethod.GET)
	public String userControl(Model model, MemberVo memberVo) throws Exception {
		List<MemberVo> list = service.memberList(memberVo);
		model.addAttribute("memberList", list);
		return "manager/include/userControl";
	}
	
	@RequestMapping(value = "/projectAcceptanceControl", method = RequestMethod.GET)
	public String projectAcceptanceControl() {
		
		return "manager/include/projectAcceptanceControl";
	}
	
	@RequestMapping(value = "/projectUnacceptedControl", method = RequestMethod.GET)
	public String projectControl() {
		
		return "manager/include/projectUnacceptedControl";
	}
	
	@RequestMapping(value = "/questionsControl", method = RequestMethod.GET)
	public String questionsControl() {
		
		return "manager/include/questionsControl";
	}
	
	
}
