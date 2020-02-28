package com.kh.Portfolio_Huddling.order;


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
import com.kh.Portfolio_Huddling.member.MemberVo;
import com.kh.Portfolio_Huddling.project.BoardService;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@Inject
	private OrderService service;
	
	@Inject
	private BoardService boardService;
	
	// 상품별 리워드 목록
	@RequestMapping(value="/detailMail/{num}/rewordlist", method = RequestMethod.GET)
	public String getRewordList(@PathVariable("num") int project_num,
			HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		session.setAttribute("project_num", project_num);
		List<TempMakerRewordDto> list = boardService.getReowrd(project_num);
		model.addAttribute("reword",list);
		System.out.println("reword 실행중");
		return "detail/rewordList";
	}
	
	// 리워드 조회
	public void getRewordview() {
		
	}
	
	@ResponseBody
	@RequestMapping(value="/detail/cart", method = RequestMethod.POST)
	public void addCart(
			RewordCartVo cart, HttpSession session) throws Exception {
		
		MemberVo member = (MemberVo)session.getAttribute("member_id");
		cart.setMember_id(member.getMember_id());
		System.out.println("addCart실행됨");
		service.addCart(cart);
		
		
		
	}
	
	

}
