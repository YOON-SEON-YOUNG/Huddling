package com.kh.Portfolio_Huddling.order;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;
import com.kh.Portfolio_Huddling.member.MemberVo;

@Service
public class OrderServiceIm implements OrderService {

    @Inject
    private OrderDao dao;

	@Override
	public TempMakerRewordDto rewordView(int temp_reword_num) throws Exception {
		return dao.rewordView(temp_reword_num);
	}

	@Override
	public void addCart(CartListDto cart) throws Exception {
		dao.addCart(cart);
		
	}

	@Override
	public List<CartListDto> cartList(String member_id) throws Exception {
		return dao.cartList(member_id);
	}

	@Override
	public void deleteCart(RewordCartVo cart) throws Exception {
		dao.deleteCart(cart);
		
	}

	@Override
	public void orderInfo(OrderVo order) throws Exception {
		dao.orderInfo(order);
	}

	@Override
	public void orderInfo_Details(OrderDetailVo orderDetail) throws Exception {
		dao.orderInfo_Details(orderDetail);
		
	}

	@Override
	public void cartAllDelete(String member_id) throws Exception {
		dao.cartAllDelete(member_id);
		
	}

	@Override
	public List<OrderVo> orderList(OrderVo order) throws Exception {
		return dao.orderList(order);
	}

	@Override
	public List<OrderListDto> orderView(OrderVo order) throws Exception {
		return dao.orderView(order);
	}

	@Override
	public List<OrderVo> myOrderList(String member_id) throws Exception {
		return dao.myOrderList(member_id);
	}

	@Override
	public List<OrderListDto> myOrderView(String order_id) throws Exception {
		return dao.myOrderView(order_id);
	}

	@Override
	public void delivery(OrderVo order) throws Exception {
		dao.delivery(order);
		
	}

	@Override
	public void changeStock(TempMakerRewordDto reword) throws Exception {
		dao.changeStock(reword);
		
	}

	@Override
	public List<OrderDetailVo> changeStock_sub(OrderVo order) throws Exception {
		return dao.changeStock_sub(order);
	}

	@Override
	public void changePoint(MemberVo member) throws Exception {
		dao.changePoint(member);
	}

	@Override
	public List<OrderVo> changePoint_sub(OrderVo order) throws Exception {
		return dao.changePoint_sub(order);
	}



	
	 


}
