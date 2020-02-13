package com.kh.Portfolio_Huddling.maker.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class TempMakerBoardDaoImpl implements TempMakerBoardDao {
	
	private final static String NAMESPACE = "com.kh.maker";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void tempSaveRequir() throws Exception {
		sqlSession.insert(NAMESPACE + ".tempInsertRequir");
	}

}
