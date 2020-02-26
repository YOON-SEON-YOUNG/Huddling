package com.kh.Portfolio_Huddling.maker;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.Portfolio_Huddling.maker.TempMakerRequirDto;
import com.kh.Portfolio_Huddling.project.ProjectVo;

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


	@Override
	public List<TempMakerBoardImgDto> tempImgName(int tempListNum) throws Exception {
		return sqlSession.selectList(NAMESPACE +".imgList",tempListNum);
	}


	@Override
	public void tempInputImgName(TempMakerBoardImgDto imgDto) throws Exception {
		sqlSession.insert(NAMESPACE + ".imgInput",imgDto);
	}


	@Override
	public int tempImgChk(String imgName) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".imgChk",imgName);
	}


	@Override
	public List<TempMakerRewordDto> tempRewordList(int tempRewordNum) throws Exception{
		return sqlSession.selectList(NAMESPACE + ".rewordList",tempRewordNum);
	}


	@Override
	public void tempInputReword(TempMakerRewordDto rewordDto) throws Exception {
		sqlSession.insert(NAMESPACE + ".rewordInput",rewordDto);
		
	}


	@Override
	public void tempMakersInfo(TempMakerMakersDto makersDto) throws Exception {
		sqlSession.insert(NAMESPACE +".tempUpdateMakersInfo",makersDto);
		
	}


	@Override
	public TempMakerMakersDto tempLoadMakersInfo(int makerInfoNum) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE + ".tempSelectMakersInfo",makerInfoNum);
	}


	@Override
	public TempMakerRewordDto tempOutPutReword(int rewordNum) {
		return sqlSession.selectOne(NAMESPACE + ".rewordOutput",rewordNum);
	}


	@Override
	public void tempRewordUpdate(TempMakerRewordDto rewordDto) throws Exception {
		sqlSession.update(NAMESPACE +".rewordUpdate",rewordDto);
	}


	@Override
	public void tempRewordDelete(int rewordNum) throws Exception {
		sqlSession.delete(NAMESPACE + ".rewordDelete",rewordNum);
	}


	@Override
	public List<ProjectVo> makerGetIntroList(String member_id) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".getMakerList",member_id);
	}


	@Override
	public void makerGetProject() throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void makerUpdateProject() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void makerInsertProject(String member_id) throws Exception {
		sqlSession.insert(NAMESPACE + ".makerProjectInsert",member_id);
	}


	@Override
	public int makerProjectNum() throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getProjectNum");
	}


	@Override
	public int tempMakerChkBasic(int project_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".chkBasic",project_num);
	}


	@Override
	public int tempMakerChkStory(int project_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".chkStory",project_num);
	}


	@Override
	public int tempMakerChkReword(int project_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".chkReword",project_num);
	}


	@Override
	public int tempMakerChkMakersInfo(int project_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".chkMakersInfo",project_num);
	}


	@Override
	public int tempMakerChkRequir(int project_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".chkRequir",project_num);
	}


	@Override
	public int submitProject(int project_num) throws Exception {
	return sqlSession.update(NAMESPACE + ".submitProject",project_num);
	}
}
