package com.kh.Portfolio_Huddling.project;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.Portfolio_Huddling.maker.TempMakerMakersDto;
import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Inject
	private SqlSession sqlsession;
	
	private final static String NAMESPACE = "com.kh.mappers.boardMapper";

	@Override
	public BoardVo getDetail(int project_num) throws Exception {
		return sqlsession.selectOne(NAMESPACE + ".getDetail",project_num);
	}

	@Override
	public List<TempMakerRewordDto> getReword(int project_num) throws Exception {
		return sqlsession.selectList(NAMESPACE + ".getReword",project_num);
	}

	@Override
	public int totalPayment(int project_num) throws Exception {
		return sqlsession.selectOne(NAMESPACE + ".totalPayment",project_num);
	}

	@Override
	@Transactional
	public String endDate(int project_num) throws Exception {
		int endDate = sqlsession.selectOne(NAMESPACE + ".endDateChk", project_num);
		if(endDate < 0) {
			sqlsession.update(NAMESPACE + ".stateChange",project_num);
			return "0";
		}
		return sqlsession.selectOne(NAMESPACE + ".endDate",project_num);
	}

	@Override
	public int totalSponser(int project_num) throws Exception {
		return sqlsession.selectOne(NAMESPACE + ".totalSponser",project_num);
	}

	@Override
	public TempMakerMakersDto makersInfo(int project_num) throws Exception {
		return sqlsession.selectOne(NAMESPACE + ".makersInfo",project_num);
	}

	@Override
	public int percent(int project_num) throws Exception {
		return sqlsession.selectOne(NAMESPACE +  ".percent",project_num);
	}

	@Override
	@Transactional
	public void endProject(int project_num) throws Exception {
		int date = sqlsession.selectOne(NAMESPACE + ".endDateChk",project_num);
		if (date < 0) {
			sqlsession.update(NAMESPACE + ".stateChange",project_num);
		}
	}
}
