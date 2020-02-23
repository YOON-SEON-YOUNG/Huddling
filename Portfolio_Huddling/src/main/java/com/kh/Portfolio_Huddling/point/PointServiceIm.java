package com.kh.Portfolio_Huddling.point;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class PointServiceIm implements PointService {
	
	@Inject
	private PointDao pointDao;

	@Override
	public void buy(PointVo pointVo) throws Exception {
		pointDao.buy(pointVo);
		
	}

	@Override
	public PointVo read(Integer point_num) throws Exception {
		pointDao.read(point_num);
		return null;
	}

}
