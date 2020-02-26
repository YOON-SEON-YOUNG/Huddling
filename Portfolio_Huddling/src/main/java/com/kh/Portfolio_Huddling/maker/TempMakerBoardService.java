package com.kh.Portfolio_Huddling.maker;

import java.util.List;

import com.kh.Portfolio_Huddling.project.ProjectVo;

public interface TempMakerBoardService {
	
	public List<ProjectVo> makerGetIntroList(String member_id) throws Exception;
	public int makerCreateBoard(String member_id) throws Exception;
	
	public TempMakerRequirDto tempRequirLoad(int tempRequirNum) throws Exception;
	public void tempRequirUpdate(TempMakerRequirDto requirDto) throws Exception;
	public TempMakerBasicDto tempBasicLoad(int tempBasicNum) throws Exception;
	public void tempBasicUpdate(TempMakerBasicDto basicDto) throws Exception;
	
	public TempMakerStoryDto tempStoryLoad(int tempStoryNum) throws Exception;
	public void tempStoryUpdate(TempMakerStoryDto storyDto) throws Exception;
	
	public List<TempMakerBoardImgDto> imgNameList(int tempStoryNum) throws Exception;
	public void tempInputImgName(TempMakerBoardImgDto imgDto) throws Exception;
	public List<TempMakerRewordDto> rewordList(int tempRewordNum) throws Exception;
	public void tempInputReword(TempMakerRewordDto rewordDto) throws Exception;
	public void tempMakersInfoUpdate(TempMakerMakersDto makersDto) throws Exception;
	public TempMakerMakersDto tempLoadMakersInfo(int makerInfoNum) throws Exception;
	public TempMakerRewordDto tempOutputReword(int rewordNum) throws Exception;
	public void tempRewordUpdate(TempMakerRewordDto rewordDto) throws Exception;
	public void tempRewordDelete(int rewordNum) throws Exception;
	
	public int tempMakerChkBasic(int project_num) throws Exception;
	public int tempMakerChkStory(int project_num) throws Exception;
	public int tempMakerChkRequir(int project_num) throws Exception;
	public int tempMakerChkMakersInfo(int project_num) throws Exception;
	public int tempMakerChkReword(int project_num) throws Exception;
	public int submitProject(int project_num) throws Exception;
}
