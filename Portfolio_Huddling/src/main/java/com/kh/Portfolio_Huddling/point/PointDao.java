package com.kh.Portfolio_Huddling.point;

import org.springframework.stereotype.Repository;

@Repository
public interface PointDao {
	
	// 포인트 충전 하기
	public void buy(PointVo pointVo) throws Exception;
	// 충전 포인트 읽기
	public PointVo read(Integer point_num) throws Exception;


}
