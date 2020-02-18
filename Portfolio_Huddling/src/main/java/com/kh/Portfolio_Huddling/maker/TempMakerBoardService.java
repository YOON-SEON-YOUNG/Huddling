package com.kh.Portfolio_Huddling.maker;

public interface TempMakerBoardService {
	public TempMakerRequirDto tempRequirLoad(int tempRequirNum) throws Exception;
	public void tempRequirUpdate(TempMakerRequirDto requirDto) throws Exception;
	public TempMakerBasicDto tempBasicLoad(int tempBasicNum) throws Exception;
	public void tempBasicUpdate(TempMakerBasicDto basicDto) throws Exception;
	public TempMakerStoryDto tempStoryLoad(int tempStoryNum) throws Exception;
	public void tempStoryUpdate(TempMakerStoryDto storyDto) throws Exception;
	
}
