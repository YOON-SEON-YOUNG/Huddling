package com.kh.Portfolio_Huddling.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.maker.TempMakerBoardService;

@Controller
@RequestMapping("/chk")
public class MakerBoardChkController {
	
	@Inject
	private TempMakerBoardService makerService;
	
	@RequestMapping(value = "/chkStory/{num}",method = RequestMethod.GET)
	@ResponseBody
	public int chkStory(@PathVariable("num")int project_num) throws Exception {
		int chk = makerService.tempMakerChkBasic(project_num);
		return chk;
		
	}
	@RequestMapping(value = "/chkRequir/{num}",method = RequestMethod.GET)
	@ResponseBody
	public int chkRequir(@PathVariable("num")int project_num) throws Exception {
		int chk = makerService.tempMakerChkRequir(project_num);
		return chk;
		
	}
	@RequestMapping(value = "/chkReword/{num}",method = RequestMethod.GET)
	@ResponseBody
	public int chkReword(@PathVariable("num")int project_num) throws Exception {
		int chk = makerService.tempMakerChkReword(project_num);
		return chk;
		
	}
	@RequestMapping(value = "/chkMakersInfo/{num}",method = RequestMethod.GET)
	@ResponseBody
	public int chkMakersInfo(@PathVariable("num")int project_num) throws Exception {
		int chk = makerService.tempMakerChkMakersInfo(project_num);
		return chk;
		
	}
	@RequestMapping(value = "/chkBasic/{num}",method = RequestMethod.GET)
	@ResponseBody
	public int chkBasic(@PathVariable("num")int project_num) throws Exception {
		int chk = makerService.tempMakerChkBasic(project_num);
		return chk;
		
	}

}
