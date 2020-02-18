package com.kh.Portfolio_Huddling.maker;

public interface TempMakerBoardService {
	public TempMakerRequirDto tempRequirLoad(int TempRequirNum) throws Exception;
	public void tempRequirUpdate(TempMakerRequirDto requirDto) throws Exception;
	public TempMakerBasicDto tempBasicLoad(int TempBasicNum) throws Exception;
	public void tempBasicUpdate(TempMakerBasicDto basicDto) throws Exception;
	
}
