package com.kh.Portfolio_Huddling.maker;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class TempMakerBoardServiceImpl implements TempMakerBoardService {
	
	@Inject
	private TempMakerBoardDao boardDao;

	@Override
	public void tempRequirUpdate(TempMakerRequirDto requirDto) throws Exception {
		System.out.println("dto :" + requirDto);
		boardDao.tempSaveRequir(requirDto);
	}

	@Override
	public TempMakerRequirDto tempRequirLoad(int TempRequirNum) throws Exception {
		return boardDao.tempLoadRequir(TempRequirNum);
	}

	@Override
	public TempMakerBasicDto tempBasicLoad(int tempBasicNum) throws Exception {
		return boardDao.temLoadBasic(tempBasicNum);
	}

	@Override
	public void tempBasicUpdate(TempMakerBasicDto basicDto) throws Exception {
		boardDao.tempSaveBasic(basicDto);
		
	}

	@Override
	public TempMakerStoryDto tempStoryLoad(int tempStoryNum) throws Exception {
		return boardDao.tempLoadStory(tempStoryNum);
	}

	@Override
	public void tempStoryUpdate(TempMakerStoryDto storyDto) throws Exception {
		boardDao.tempSaveStory(storyDto);
		
	}

}
