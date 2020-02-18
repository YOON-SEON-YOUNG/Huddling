package com.kh.Portfolio_Huddling.maker;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.Portfolio_Huddling.maker.TempMakerRequirDto;

@Repository
public class TempMakerBoardDaoImpl implements TempMakerBoardDao {
	
	private final static String NAMESPACE = "com.kh.mappers.maker";
	
	@Inject
	private SqlSession sqlSession;


	@Override
	public void tempSaveRequir(TempMakerRequirDto makerDto) throws Exception {
		sqlSession.update(NAMESPACE + ".tempUpdateRequir", makerDto);
	}


	@Override
	public TempMakerRequirDto tempLoadRequir(int tempRequirNum) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".tempSelectRequir",tempRequirNum);
	}


	@Override
	public TempMakerBasicDto temLoadBasic(int tempBasicNum) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".tempSelectBasic",tempBasicNum);
	}


	@Override
	public void tempSaveBasic(TempMakerBasicDto basicDto) throws Exception {
		sqlSession.update(NAMESPACE + ".tempUpdateBasic",basicDto);
		
	}


	@Override
	public TempMakerStoryDto tempLoadStory(int tempStoryNum) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".tempSelectStory",tempStoryNum);
	}


	@Override
	public void tempSaveStory(TempMakerStoryDto storyDto) throws Exception {
		System.out.println("dao/ : " + storyDto);
		sqlSession.update(NAMESPACE + ".tempUpdateStory",storyDto);
		
	}

}
