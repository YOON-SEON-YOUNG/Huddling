package com.kh.Portfolio_Huddling.manager;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.member.MemberService;
import com.kh.Portfolio_Huddling.member.MemberVo;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/mainPage", method = RequestMethod.GET)
	public String page() {
		
		return "manager/managerMainPage";
	}
	
	@RequestMapping(value = "/userControl", method = RequestMethod.GET)
	public String userControl(Model model, MemberVo memberVo, String search) throws Exception {
		if (search == null || search.equals("")) {
			List<MemberVo> list = memberService.memberList(memberVo);
			model.addAttribute("memberList", list);
			model.addAttribute("search", search);
			return "manager/include/userControl";
		} else if (search != null && !(search.equals(""))) {
			List<MemberVo> list = memberService.memberSearch(search);
			model.addAttribute("memberList", list);
			model.addAttribute("search", search);
			System.out.println(list);
			return "manager/include/userControl";
		}
		return "manager/include/userControl";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/memberBan", method = RequestMethod.POST)
	public String userRating(MemberVo memberVo) throws Exception {
		if (memberVo.getMember_rating() == 1) {
			memberService.memberRating(memberVo);
			return "Ban";
		} else if (memberVo.getMember_rating() == 0) {
			memberService.memberRating(memberVo);
			return "Unban";
		}
		return "0";
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
