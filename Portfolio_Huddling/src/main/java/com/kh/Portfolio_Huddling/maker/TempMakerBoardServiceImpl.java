package com.kh.Portfolio_Huddling.maker;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public TempMakerStoryDto tempStoryLoad(int tempStoryNum) throws Exception {
		//이미지 개수 
		int count = boardDao.tempImgNum(tempStoryNum);
		System.out.println("count : " + count);
		return boardDao.tempLoadStory(tempStoryNum);
	}

	@Override
	public void tempStoryUpdate(TempMakerStoryDto storyDto) throws Exception {
		boardDao.tempSaveStory(storyDto);
		
	}

	@Override
	public List<TempMakerBoardImgDto> imgNameList(int tempStoryNum) throws Exception {
				List<TempMakerBoardImgDto> list = boardDao.tempImgName(tempStoryNum);
				System.out.println("list : " + list);
		return list;
	}

	@Override
	public void tempInputImgName(TempMakerBoardImgDto imgDto) throws Exception {
		boardDao.tempInputImgName(imgDto);
		
	}

}
