package com.kh.Portfolio_Huddling.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.Portfolio_Huddling.member.MemberVo;
import com.kh.Portfolio_Huddling.member.PaymentVo;
import com.kh.Portfolio_Huddling.member.PointService;

@Controller
@RequestMapping("/detail/*")
public class ProductDetailController {
	
	@Inject
	private PointService pointService;
	
	
	// 펀딩 상세보기 페이지 
	@RequestMapping(value="/detailMain", method=RequestMethod.GET)
	public String page() {
		System.out.println("detailMain 실행중");
		return "detail/productDetail";
	}
	
	// 펀딩 상품 소개
	@RequestMapping(value= "/tapInfo", method = RequestMethod.GET)
	public String tapInfo() {
		System.out.println("tapInfo 실행중");
		return "detail/include/tapInfo";
		
	}
	
	// 펀딩 참여 내역
	@RequestMapping(value= "/tapComment", method = RequestMethod.GET)
	public String tapComment() {
		System.out.println("tapComment 실행중");
		return "detail/include/tapComment";
		
	}
	
	// 펀딩 후기
	@RequestMapping(value= "/tapReview", method = RequestMethod.GET)
	public String tapReview() {
		System.out.println("tapReview 실행중");
		return "detail/include/tapReview";
	}
	
	// 펀딩 리워드 옵션
	@RequestMapping(value= "/orderOption")
	public String orderOption() {
		return "detail/orderOption";
		
	}
	
	// 결제 페이지 포인트 사용(새창)
	@RequestMapping(value="/orderPage", method = RequestMethod.GET)
	public String orderPage() {
		return "detail/orderPage";
		
	}
	
	// 결제 포인트 실행 
	@RequestMapping(value="/use", method = RequestMethod.POST)
	public String use(PaymentVo paymentVo) throws Exception {
		System.out.println("use 실행됨");
		pointService.use(paymentVo);
		return "redirect:/";
		
		
	}
	
	

}
