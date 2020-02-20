package com.kh.Portfolio_Huddling.point;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class PointServiceIm implements PointService {
	
	@Inject
	private PointDao pointDao;

	@Override
	public void buy(PointVo pointVo) throws Exception {
		int point_num = pointDao.getNextVal();	
		pointVo.setPoint_num(point_num);
		pointDao.buy(pointVo);
		
	}

}
