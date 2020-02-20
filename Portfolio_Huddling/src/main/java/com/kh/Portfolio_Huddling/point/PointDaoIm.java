package com.kh.Portfolio_Huddling.point;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PointDaoIm implements PointDao {
	
	
	@Inject
	private SqlSession sqlsession;
	
	private static final String NAMESPACE = "com.kh.mappers.pointMapper";
	
	@Override
	public void buy(PointVo pointVo) throws Exception {
		sqlsession.insert(NAMESPACE + ".buy", pointVo);
		
	}

	@Override
	public int getNextVal() throws Exception {
		return sqlsession.selectOne(NAMESPACE+ ".getNextVal");
	}

	@Override
	public String getTime() {
		String time = sqlsession.selectOne(NAMESPACE + ".getTime");
		return time;
	}
}
