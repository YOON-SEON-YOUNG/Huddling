package com.kh.Portfolio_Huddling.maker;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class TempMakerBoardServiceImpl implements TempMakerBoardService {
	
	@Inject
	private TempMakerBoardDao boardDao;

	@Override
	public void tempInsert(TempMakerRequirDto requirDto) throws Exception {
		System.out.println(requirDto);
		boardDao.tempSaveRequir(requirDto);
	}

}
