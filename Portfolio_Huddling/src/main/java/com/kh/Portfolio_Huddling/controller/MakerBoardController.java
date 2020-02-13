package com.kh.Portfolio_Huddling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.domain.MakerDto;

@Controller
@RequestMapping("/maker/*")
public class MakerBoardController {
	@RequestMapping(value="/requir",method = RequestMethod.GET)
	public String requir() {
		return "maker/maker_requir";
	}
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String board() {
		System.out.println("home 실행중...");
		return "maker/maker_home";
	}
	@RequestMapping(value="/info")
	public String basicInfo() {
		System.out.println("info 실행중...");
		return "maker/maker_basicInfo";
	}
	@RequestMapping(value="/story")
	public String story() {
		System.out.println("story 실행중...");
		return "maker/maker_productStory";
	}
	@RequestMapping(value="/reword")
	public String reword() {
		System.out.println("reword 실행중...");
		return "maker/maker_reword";
	}
	@RequestMapping(value="/policy", method = RequestMethod.GET)
	public String policy() {
		System.out.println("policy 실행중...");
		return "maker/maker_policy";
	}
	@RequestMapping(value="/makerInfo")
	public String makerInfo() {
		System.out.println("makerInfo 실행중...");
		return "maker/maker_makerInfo";
	}
	
	@RequestMapping(value="/data", method =RequestMethod.GET)
	@ResponseBody
	public MakerDto data(MakerDto mkrDto) {
		System.out.println(mkrDto);
		return mkrDto;
	}
	
}
