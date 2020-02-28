package com.kh.Portfolio_Huddling.order;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

@Service
public class OrderServiceIm implements OrderService {

    @Inject
    private OrderDao dao;

	@Override
	public TempMakerRewordDto rewordView(int temp_reword_num) throws Exception {
		return dao.rewordView(temp_reword_num);
	}

	@Override
	public void addCart(RewordCartVo cart) throws Exception {
		dao.addCart(cart);
		
	}

	@Override
	public List<RewordCartListDto> cartList(String member_id) throws Exception {
		return dao.cartList(member_id);
	}
	 


}
