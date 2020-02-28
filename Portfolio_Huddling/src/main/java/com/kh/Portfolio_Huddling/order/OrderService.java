package com.kh.Portfolio_Huddling.order;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

@Service
public interface OrderService {
	
	// 리워드 개별 조회 
	public TempMakerRewordDto rewordView(int temp_reword_num) throws Exception;
		
	
	// 리워드 담기
	public void addCart(RewordCartVo cart) throws Exception;
	
	// 리워드 담기 리스트
	public List<RewordCartListDto> cartList(String member_id) throws Exception;

}
