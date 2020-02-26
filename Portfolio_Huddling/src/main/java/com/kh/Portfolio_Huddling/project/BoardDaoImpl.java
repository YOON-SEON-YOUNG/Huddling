package com.kh.Portfolio_Huddling.project;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Inject
	private SqlSession sqlsession;
	
	private final static String NAMESPACE = "com.kh.mappers.boardMapper";

	@Override
	public BoardVo getDetail(int projectNum) throws Exception {
		return sqlsession.selectOne(NAMESPACE + ".getDetail",projectNum);
	}

	@Override
	public List<TempMakerRewordDto> getReword(int projectNum) throws Exception {
		return sqlsession.selectList(NAMESPACE + ".getReword",projectNum);
	}
}
