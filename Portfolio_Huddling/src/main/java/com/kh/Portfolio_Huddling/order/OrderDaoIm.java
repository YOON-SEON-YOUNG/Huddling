package com.kh.Portfolio_Huddling.order;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

@Repository
public class OrderDaoIm implements OrderDao {
	
	@Inject
	private SqlSession sql;
	
	private final static String NAMESPACE = "com.kh.mappers.order";

	@Override
	public TempMakerRewordDto rewordView(int temp_reword_num) throws Exception {
		return sql.selectOne(NAMESPACE +".rewordView", temp_reword_num);
	}

	@Override
	public void addCart(RewordCartVo cart) throws Exception {
		System.out.println("cart:" + cart);
		sql.insert(NAMESPACE + ".addCart", cart); 
		
	}

	@Override
	public List<RewordCartListDto> cartList(String member_id) throws Exception {
		return sql.selectList(NAMESPACE + ".rewordCartList", member_id);
	}


}
