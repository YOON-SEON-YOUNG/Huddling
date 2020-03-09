package com.kh.Portfolio_Huddling.order;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;
import com.kh.Portfolio_Huddling.member.MemberVo;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@Inject
	private OrderService orderService;
	
	
	// 내 프로젝트 주문 목록
	@RequestMapping(value="/order/myOrderList", method= RequestMethod.GET)
	public String getMyOrderList(HttpServletRequest request,
			Model model) throws Exception {
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		System.out.println("로그인 아이디 : " + member_id);
		List<OrderVo> mylist = orderService.myOrderList(member_id);
		model.addAttribute("mylist", mylist);
	
		return "order/myOrderList";
		
	}
	
	
	// 내 프로젝트 주문 목록 상세보기
	@RequestMapping(value="/order/myOrderView", method = RequestMethod.GET)
	public String getOrderList(
			@RequestParam("n") String order_id, 
			Model model) throws Exception {
	
		
		System.out.println("order_id" + order_id);
		List<OrderListDto> myview = orderService.myOrderView(order_id);
		model.addAttribute("myview", myview);
		System.out.println("상세보기 : " + myview);
		
		return "order/myOrderView";
		
	}
	
	// 주문 상세 목록 - 상태 변경
	@RequestMapping(value = "/order/myOrderView", method = RequestMethod.POST)
	@ResponseBody
	public String delivery(OrderVo order) throws Exception {
		System.out.println("order:" + order);
		orderService.delivery(order);
		
		List<OrderVo> order2 = orderService.changePoint_sub(order);
		MemberVo member2 = new MemberVo();
		
		for(OrderVo j : order2) {
			member2.setMember_id(j.getMember_id());
			member2.setMember_point(j.getPoint());
			orderService.changePoint(member2);
		}
		
		
		List<OrderDetailVo> orderView = orderService.changeStock_sub(order);
		TempMakerRewordDto reword = new TempMakerRewordDto();
		
		for(OrderDetailVo i : orderView) {
			reword.setTemp_reword_num(i.getReword_num());
			reword.setTemp_reword_count(i.getCartstock());
			orderService.changeStock(reword);
			
			
		}
		System.out.println("success");
		
//		return "rediret:/order/myOrderView?n=" + order.getOrder_id();
		return "success";
		
	}

		

	
		

}
