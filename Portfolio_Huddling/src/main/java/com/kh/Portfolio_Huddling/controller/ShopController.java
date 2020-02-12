package com.kh.Portfolio_Huddling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board/*")
public class ShopController {
	
	
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
	public String categoryFood() {
		
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
	
}
