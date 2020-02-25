package com.kh.Portfolio_Huddling.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.project.ProjectService;
import com.kh.Portfolio_Huddling.project.ProjectVo;

@Controller
@RequestMapping("/board/*")
public class ShopController {
	
	@Inject
	private ProjectService projectService;
	
	// 카테고리 테크/가전
	@RequestMapping(value = "/categoryTech", method = RequestMethod.GET)
	public String categoryTech() {
		
		return "board/shop_category_tech";
	}
	
	
	// 카테고리 뷰티
	@RequestMapping(value = "/categoryBeauty", method = RequestMethod.GET)
	public String categoryBeauty() {
		return "board/shop_category_beauty";
	}
	
	
	// 카테고리 푸드
	@RequestMapping(value = "/categoryFood", method = RequestMethod.GET)
	public String categoryFood()throws Exception {
		return "board/shop_category_food";
	}
	
	
	// 카테고리 문화
	@RequestMapping(value = "/categoryCulture", method = RequestMethod.GET)
	public String categoryCulture() {
		
		return "board/shop_category_culture";
	}
	
	
	// 카테고리 기부/후원
	@RequestMapping(value = "/categoryDonate", method = RequestMethod.GET)
	public String categoryDonate() {
		return "board/shop_category_donate";
	}
	
	@RequestMapping(value="/projectList", method = RequestMethod.GET)
	@ResponseBody
	public List<ProjectVo> projectLists() throws Exception {
		System.out.println("요청 들어옴");
		List<ProjectVo> projectList = projectService.selectIntroList();
		System.out.println("ShopController, projectLists, projectList:" + projectList);
		return projectList;
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/categoryRead", method = RequestMethod.GET)
	public List<ProjectVo> categoryFoodRead(ProjectVo projectVo)throws Exception {
		System.out.println(projectVo.getProject_category());
		List<ProjectVo> list = projectService.category(projectVo);
		System.out.println(list);
		return list;
	}
	@ResponseBody
	@RequestMapping(value ="/endData",method = RequestMethod.GET)
	public String enddata(String basic_enddate)throws Exception{
		projectService.deadline(basic_enddate);
		System.out.println("endData:" +  basic_enddate);
		return null;
	}
	
}
