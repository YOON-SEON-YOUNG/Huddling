package com.kh.Portfolio_Huddling.maker;

import java.util.List;

public interface TempMakerBoardService {
	public TempMakerRequirDto tempRequirLoad(int tempRequirNum) throws Exception;
	public void tempRequirUpdate(TempMakerRequirDto requirDto) throws Exception;
	public TempMakerBasicDto tempBasicLoad(int tempBasicNum) throws Exception;
	public void tempBasicUpdate(TempMakerBasicDto basicDto) throws Exception;
	public TempMakerStoryDto tempStoryLoad(int tempStoryNum) throws Exception;
	public void tempStoryUpdate(TempMakerStoryDto storyDto) throws Exception;
	public List<TempMakerBoardImgDto> imgNameList(int tempStoryNum) throws Exception;
	public void tempInputImgName(TempMakerBoardImgDto imgDto) throws Exception;
}
