package com.kh.Portfolio_Huddling.member;



import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface PointDao {
	
	// 포인트 구매
	public void buy(PointVo pointVo) throws Exception;
	// 포인트 구매 내역
	public List<PointVo> pointById(String member_id) throws Exception;
	// 포인트 사용
	public void use(PaymentVo paymentVo) throws Exception;
	
	
}
