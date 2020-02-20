package com.kh.Portfolio_Huddling.point;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/point*/")
public class PointController {
	
	@Inject
	private PointService pointService;
	
	// 포인트 충전폼 -> /point/buy -> GET 방식 요청 처리 
	@RequestMapping(value="/buy", method = RequestMethod.GET)
	public String buyGET() throws Exception {
		System.out.println("buyGET() 실행됨");
		return "point/buyPoint";
		
	}
	
	// 포인트 충전처리 -> /point/buy -> POST 방식 요청 처리
	@RequestMapping(value="/buy", method = RequestMethod.POST)
	public String buyPOST(PointVo pointVo) throws Exception {
		System.out.println("butPOST() 실행됨");
		System.out.println("pointVo:" + pointVo);
		pointService.buy(pointVo);
		return "point/buyPoint";
	
		
	}

}
