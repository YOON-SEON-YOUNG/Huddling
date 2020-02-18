package com.kh.Portfolio_Huddling.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.maker.TempMakerBasicDto;
import com.kh.Portfolio_Huddling.maker.TempMakerBoardService;
import com.kh.Portfolio_Huddling.maker.TempMakerRequirDto;


@Controller
@RequestMapping("/maker/*")
public class MakerBoardController {
	
	@Inject
	private TempMakerBoardService tempService;
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String board() {
		System.out.println("home 실행중...");
		return "maker/maker_home";
	}
	
	@RequestMapping(value="/requir",method = RequestMethod.GET)
	public String requir(Model model) throws Exception {
		int TempRequirNum = 1;
		TempMakerRequirDto requirDto = tempService.tempRequirLoad(TempRequirNum);
		model.addAttribute("requirDto",requirDto);		
		System.out.println("DTO :" + requirDto);
		System.out.println("requir 실행중...");
		return "maker/maker_requir";
	}
	
	@RequestMapping(value="/info", method = RequestMethod.GET)
	public String basicInfo(Model model) throws Exception {
		int TempBasicNum = 1;
		TempMakerBasicDto basicDto = tempService.tempBasicLoad(TempBasicNum);
		model.addAttribute("basicDto",basicDto);
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
	
	@RequestMapping(value="/tempDataRequir", method =RequestMethod.POST)
	@ResponseBody
	public TempMakerRequirDto data(TempMakerRequirDto mkrDto) throws Exception {
		if(mkrDto.getRequir_q1() == null) {
			mkrDto.setRequir_q1("false");
		};
		if(mkrDto.getRequir_q4() == null) {
			mkrDto.setRequir_q4("false");
		};
		tempService.tempRequirUpdate(mkrDto);
		return mkrDto;
	}
	
	@RequestMapping(value="/tempDataBasicInfo", method = RequestMethod.POST)
	@ResponseBody
	public TempMakerBasicDto data(TempMakerBasicDto basicDto) throws Exception {
		tempService.tempBasicUpdate(basicDto);
		return basicDto;
	}
	
}
