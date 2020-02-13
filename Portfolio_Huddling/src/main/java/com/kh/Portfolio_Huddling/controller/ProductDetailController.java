package com.kh.Portfolio_Huddling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/detail/*")
public class ProductDetailController {
	
	@RequestMapping(value="/detailMain", method=RequestMethod.GET)
	public String page() {
		System.out.println("detailMain 실행중");
		return "detail/productDetail";
	}
	
	@RequestMapping(value= "/tapInfo", method = RequestMethod.GET)
	public String tapInfo() {
		System.out.println("tapInfo 실행중");
		return "detail/include/tapInfo";
		
	}
	@RequestMapping(value= "/tapComment", method = RequestMethod.GET)
	public String tapComment() {
		System.out.println("tapComment 실행중");
		return "detail/include/tapComment";
		
	}
	
	@RequestMapping(value= "/tapReview", method = RequestMethod.GET)
	public String tapReview() {
		System.out.println("tapReview 실행중");
		return "detail/include/tapReview";
	}
	
	@RequestMapping(value= "/orderOption")
	public String orderOption() {
		return "detail/orderOption";
		
	}
	
	

}
