package com.kh.Portfolio_Huddling.point;

import org.springframework.stereotype.Repository;

@Repository
public interface PointDao {
	
	// 포인트 충전 하기
	public void buy(PointVo pointVo) throws Exception;
	// 다음 시퀀스 값 얻기
	public int getNextVal() throws Exception;
	// 날짜 값 얻기
	public String getTime();

}
