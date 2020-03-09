package com.kh.Portfolio_Huddling.order;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;
import com.kh.Portfolio_Huddling.member.MemberVo;

@Repository
public interface OrderDao {
	
	// 리워드 개별 조회 
	public TempMakerRewordDto rewordView(int temp_reword_num) throws Exception;
	
	// 리워드 담기
	public void addCart(CartListDto cart) throws Exception;
	
	// 리워드 카트 리스트
	public List<CartListDto> cartList(String member_id) throws Exception; 
	
	// 리워트 카트 삭제 
	public void deleteCart(RewordCartVo cart) throws Exception;
	
	// 주문 정보
	public void orderInfo(OrderVo order) throws Exception;
	
	// 주문 상세 정보
	public void orderInfo_Details(OrderDetailVo orderDetail) throws Exception;
	
	// 카트 비우기
	public void cartAllDelete(String member_id) throws Exception;
	
	// 주문 목록
	public List<OrderVo> orderList(OrderVo order) throws Exception;
	
	// 특정 주문 목록
	public List<OrderListDto> orderView(OrderVo order) throws Exception;
	
	// 내 프로젝트 주문 목록
	public List<OrderVo> myOrderList(String member_id) throws Exception;
	
	// 내 프로젝트 주문 목록 상세보기
	public List<OrderListDto> myOrderView(String order_id) throws Exception;

	// 배송 상태
	public void delivery(OrderVo order) throws Exception;
	
	// 상품 수량 조절
	public void changeStock(TempMakerRewordDto reword) throws Exception;
	
	// 상품 수량 조절 보조
	public List<OrderDetailVo> changeStock_sub(OrderVo order) throws Exception;
	
	// 사용 포인트 반영
	public void changePoint(MemberVo member) throws Exception;
	
	// 사용 포인트 반영 보고
	public List<OrderVo> changePoint_sub(OrderVo order) throws Exception;
	
	
}
