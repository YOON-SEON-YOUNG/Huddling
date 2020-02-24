package com.kh.Portfolio_Huddling.maker;

import java.util.List;

public interface TempMakerBoardDao {
	public TempMakerRequirDto tempLoadRequir(int tempRequirNum) throws Exception;
	public void tempSaveRequir(TempMakerRequirDto makerDto) throws Exception;
	public TempMakerBasicDto temLoadBasic(int tempBasicNum) throws Exception;
	public void tempSaveBasic(TempMakerBasicDto basicDto) throws Exception;
	public TempMakerStoryDto tempLoadStory(int tempStoryNum) throws Exception;
	public void tempSaveStory(TempMakerStoryDto storyDto) throws Exception;
	public void tempInputImgName(TempMakerBoardImgDto imgDto) throws Exception;
	public List<TempMakerBoardImgDto> tempImgName(int tempListNum) throws Exception;
	public int tempImgChk(String imgName) throws Exception;
	public List<TempMakerRewordDto> tempRewordList(int tempRewordNum) throws Exception;
	public void tempInputReword(TempMakerRewordDto rewordDto) throws Exception;
	public void tempMakersInfo(TempMakerMakersDto makersDto) throws Exception;
	public TempMakerMakersDto tempLoadMakersInfo(int makerInfoNum) throws Exception;
	public TempMakerRewordDto tempOutPutReword(int rewordNum) throws Exception;
	public void tempRewordUpdate(TempMakerRewordDto rewordDto) throws Exception;
	public void tempRewordDelete(int rewordNum) throws Exception;

}
