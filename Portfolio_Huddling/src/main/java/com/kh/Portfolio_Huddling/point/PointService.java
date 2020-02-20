package com.kh.Portfolio_Huddling.point;

import org.springframework.stereotype.Service;

@Service
public interface PointService {
	
	public void buy(PointVo pointVo) throws Exception;
	public PointVo read(Integer point_num) throws Exception;
}
