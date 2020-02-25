package com.kh.Portfolio_Huddling.member;



import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface PointDao {
	
	// 포인트 구매
	public void buy(PointVo pointVo) throws Exception;
	// 포인트 구매 내역
	public List<PointVo> pointById(String member_id) throws Exception;
	// 총 포인트 구매 액수
	public int sum_pointById(String member_id) throws Exception;
	// 포인트 구매 횟수
	public int count_pointById(String member_id) throws Exception;
	// 최대 머니 구매 코드 값
	public int max_moneyCode() throws Exception;
}
