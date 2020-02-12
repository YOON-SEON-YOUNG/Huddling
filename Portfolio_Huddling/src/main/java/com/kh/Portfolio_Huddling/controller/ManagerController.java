package com.kh.Portfolio_Huddling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	@RequestMapping(value = "/mainPage", method = RequestMethod.GET)
	public String page() {
		
		return "manager/managerMainPage";
	}
	
	@RequestMapping(value = "/userControl", method = RequestMethod.GET)
	public String userControl() {
		
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
