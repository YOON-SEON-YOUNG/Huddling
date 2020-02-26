package com.kh.Portfolio_Huddling.member;

import java.util.List;

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
	public List<PointVo> pointById(String member_id) throws Exception {
		return pointDao.pointById(member_id);
	}

	@Override
	public void use(PaymentVo paymentVo) throws Exception {
		pointDao.use(paymentVo);
		
	}
	



}
