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

}
