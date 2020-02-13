package com.kh.Portfolio_Huddling.maker.persistence;

import com.kh.Portfolio_Huddling.maker.domain.TempMakerRequirDto;

public interface TempMakerBoardDao {
	
	public void tempSaveRequir(TempMakerRequirDto makerDto) throws Exception;

}
