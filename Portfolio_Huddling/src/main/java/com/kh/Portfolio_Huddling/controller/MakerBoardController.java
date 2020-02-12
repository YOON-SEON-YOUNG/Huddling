package com.kh.Portfolio_Huddling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/maker/*")
public class MakerBoardController {
	@RequestMapping(value="/requir",method = RequestMethod.GET)
	public String requir() {
		return "maker/requir";
	}
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String board() {
		System.out.println("home 실행중...");
		return "maker/home";
	}
	@RequestMapping(value="/info")
	public String basicInfo() {
		System.out.println("info 실행중...");
		return "maker/info";
	}
	@RequestMapping(value="/story")
	public String story() {
		System.out.println("story 실행중...");
		return "maker/makerStory";
	}
	@RequestMapping(value="/reword")
	public String reword() {
		System.out.println("reword 실행중...");
		return "maker/reword";
	}
	@RequestMapping(value="/policy", method = RequestMethod.GET)
	public String policy() {
		System.out.println("policy 실행중...");
		return "maker/policy";
	}
	@RequestMapping(value="/makerInfo")
	public String makerInfo() {
		System.out.println("makerInfo 실행중...");
		return "maker/makerInfo";
	}
	
}
