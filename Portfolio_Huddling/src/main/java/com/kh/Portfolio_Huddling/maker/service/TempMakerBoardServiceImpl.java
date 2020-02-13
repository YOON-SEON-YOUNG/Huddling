package com.kh.Portfolio_Huddling.maker.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.maker.domain.TempMakerRequirDto;
import com.kh.Portfolio_Huddling.maker.persistence.TempMakerBoardDao;

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
