package com.kh.Portfolio_Huddling.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;
import com.kh.Portfolio_Huddling.project.BoardService;
import com.kh.Portfolio_Huddling.project.BoardVo;

@Controller
@RequestMapping("/detail/*")
public class ProductDetailController {
	
	@Inject
	private BoardService boardService;
	
	// 펀딩 상세보기 페이지 
	@RequestMapping(value="/detailMain/{num}", method=RequestMethod.GET)
	public String page(@PathVariable("num") int project_num,
			HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		session.setAttribute("project_num", project_num);
		List<TempMakerRewordDto> list = boardService.getReowrd(project_num);
		model.addAttribute("reword",list);
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
	
	// 결제 페이지(새창)
	@RequestMapping(value="/orderPage")
	public String orderPage() {
		return "detail/orderPage";
	}
	
	// 디테일 페이지 데이터 가져오기
	@RequestMapping(value="/getDetail/{num}", method= RequestMethod.GET)
	@ResponseBody
	public BoardVo getDetail(@PathVariable("num")int project_num,
			HttpServletRequest request) throws Exception {
		System.out.println("디테일 데이터 가져옴...");
		project_num = (int) request.getSession().getAttribute("project_num"); 
		BoardVo vo = boardService.getDetail(project_num);
		return vo;
	}
}
