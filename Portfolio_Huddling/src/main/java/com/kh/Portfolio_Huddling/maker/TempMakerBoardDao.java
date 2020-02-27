package com.kh.Portfolio_Huddling.maker;

import java.util.List;

import com.kh.Portfolio_Huddling.project.ProjectVo;

public interface TempMakerBoardDao {
	//메이커 홈페이지
	public List<ProjectVo> makerGetIntroList(String member_id) throws Exception;
	public void makerGetProject() throws Exception;
	public void makerUpdateProject() throws Exception;
	public void makerInsertProject(String member_id) throws Exception;
	public int makerProjectNum() throws Exception;
	//기본 요건
	public TempMakerRequirDto tempLoadRequir(int tempRequirNum) throws Exception;
	public void tempSaveRequir(TempMakerRequirDto makerDto) throws Exception;
	//기본 정보
	public TempMakerBasicDto temLoadBasic(int tempBasicNum) throws Exception;
	public void tempSaveBasic(TempMakerBasicDto basicDto) throws Exception;
	//스토리 작성
	public TempMakerStoryDto tempLoadStory(int tempStoryNum) throws Exception;
	public void tempUploadImg(int project_num) throws Exception;
	public void tempUploadCategory(int project_num) throws Exception;
	public void tempUploadTitle(int project_num) throws Exception;
	public void tempUploadStory(int project_num) throws Exception;
	public void tempSaveStory(TempMakerStoryDto storyDto) throws Exception;
	public void tempInputImgName(TempMakerBoardImgDto imgDto) throws Exception;
	public List<TempMakerBoardImgDto> tempImgName(int tempListNum) throws Exception;
	public int tempImgChk(String imgName) throws Exception;
	//리워드 설계
	public List<TempMakerRewordDto> tempRewordList(int tempRewordNum) throws Exception;
	public void tempInputReword(TempMakerRewordDto rewordDto) throws Exception;
	public TempMakerRewordDto tempOutPutReword(int rewordNum) throws Exception;
	public void tempRewordUpdate(TempMakerRewordDto rewordDto) throws Exception;
	public void tempRewordDelete(int rewordNum) throws Exception;
	//메이커 정보
	public void tempMakersInfo(TempMakerMakersDto makersDto) throws Exception;
	public TempMakerMakersDto tempLoadMakersInfo(int makerInfoNum) throws Exception;
	//작성 확인
	public int tempMakerChkBasic(int project_num) throws Exception;
	public int tempMakerChkStory(int project_num) throws Exception;
	public int tempMakerChkReword(int project_num) throws Exception;
	public int tempMakerChkMakersInfo(int project_num) throws Exception;
	public int tempMakerChkRequir(int project_num) throws Exception;
	public int submitProject(int project_num) throws Exception;

}
