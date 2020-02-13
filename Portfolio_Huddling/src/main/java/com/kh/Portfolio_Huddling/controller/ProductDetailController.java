package com.kh.Portfolio_Huddling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/detail/*")
public class ProductDetailController {
	
	@RequestMapping(value="/detailMain", method=RequestMethod.GET)
	public String productdetail() {
		
		return "detail/product_detail";
	}
	

}
