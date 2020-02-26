package com.kh.Portfolio_Huddling.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PointDaoIm implements PointDao {
	
	
	@Inject
	private SqlSession sqlsession;
	
	private static final String NAMESPACE = "com.kh.mappers.memberMapper";
	
	@Override
	public void buy(PointVo pointVo) throws Exception {
		sqlsession.insert(NAMESPACE + ".buy", pointVo);
		
	}

	@Override
	public List<PointVo> pointById(String member_id) throws Exception {
		return sqlsession.selectList(NAMESPACE + ".pointById", member_id);
	}

	@Override
	public void use(PaymentVo paymentVo) throws Exception {
		sqlsession.insert(NAMESPACE + ".use", paymentVo);
		
	}




	

	

}
