package com.kh.Portfolio_Huddling.order;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;
import com.kh.Portfolio_Huddling.member.MemberVo;

@Repository
public class OrderDaoIm implements OrderDao {
	
	@Inject
	private SqlSession sql;
	
	private final static String NAMESPACE = "com.kh.mappers.order";

	@Override
	public TempMakerRewordDto rewordView(int temp_reword_num) throws Exception {
		return sql.selectOne(NAMESPACE +".rewordView",temp_reword_num);
	}

	@Override
	public void addCart(CartListDto cart) throws Exception {
		sql.insert(NAMESPACE + ".addCart", cart); 
		
	}

	@Override
	public List<CartListDto> cartList(String member_id) throws Exception {		
		return sql.selectList(NAMESPACE + ".cartList", member_id);
	}

	@Override
	public void deleteCart(RewordCartVo cart) throws Exception {
		sql.delete(NAMESPACE+ ".deleteCart", cart); 
		
	}

	@Override
	public void orderInfo(OrderVo order) throws Exception {
		sql.insert(NAMESPACE + ".orderInfo", order);
		
	}

	@Override
	public void orderInfo_Details(OrderDetailVo orderDetail) throws Exception {
		sql.insert(NAMESPACE + ".orderInfo_Details", orderDetail);
		
	}

	@Override
	public void cartAllDelete(String member_id) throws Exception {
		sql.delete(NAMESPACE + ".cartAllDelete", member_id);
		
	}

	@Override
	public List<OrderVo> orderList(OrderVo order) throws Exception {
		return sql.selectList(NAMESPACE + ".orderList", order);
	}

	@Override
	public List<OrderListDto> orderView(OrderVo order) throws Exception {
		return sql.selectList(NAMESPACE + ".orderView", order);
	}

	@Override
	public List<OrderVo> myOrderList(String member_id) throws Exception {
		return sql.selectList(NAMESPACE + ".myOrderList", member_id);
	}

	@Override
	public List<OrderListDto> myOrderView(String order_id) throws Exception {
		return sql.selectList(NAMESPACE + ".myOrderView", order_id);
	}

	@Override
	public void delivery(OrderVo order) throws Exception {
		sql.update(NAMESPACE + ".delivery", order);
		
	}

	@Override
	public void changeStock(TempMakerRewordDto reword) throws Exception {
		sql.update(NAMESPACE + ".changeStock", reword);
		
	}

	@Override
	public List<OrderDetailVo> changeStock_sub(OrderVo order) throws Exception {
		return sql.selectList(NAMESPACE+ ".changeStock_sub",order);
	}

	@Override
	public void changePoint(MemberVo member) throws Exception {
		sql.update(NAMESPACE + ".changePoint", member);
		
	}

	@Override
	public List<OrderVo> changePoint_sub(OrderVo order) throws Exception {
		return sql.selectList(NAMESPACE+ ".changePoint_sub", order);
	}



	


}
