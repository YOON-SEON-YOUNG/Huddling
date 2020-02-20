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
	public TempMakerStoryDto tempStoryLoad(int tempStoryNum) throws Exception {
		return boardDao.tempLoadStory(tempStoryNum);
	}

	@Override
	public void tempStoryUpdate(TempMakerStoryDto storyDto) throws Exception {
		boardDao.tempSaveStory(storyDto);

	}

	@Override
	public List<TempMakerBoardImgDto> imgNameList(int tempStoryNum) throws Exception {
		List<TempMakerBoardImgDto> list = boardDao.tempImgName(tempStoryNum);
		return list;
	}

	@Override
	@Transactional
	public void tempInputImgName(TempMakerBoardImgDto imgDto) throws Exception {
		String imgName = imgDto.getImglist_name();
		System.out.println("이미지 이름 가져옴...");
		if (imgName != null) {
			System.out.println("저장된 이미지 있는지 확인...");
			int count = boardDao.tempImgChk(imgName);
			if (count < 1) {
				System.out.println("저장된 이미지 없음...");
				boardDao.tempInputImgName(imgDto);
			}
		}
	}

	@Override
	public List<TempMakerRewordDto> rewordList(int tempRewordNum) throws Exception {
		List<TempMakerRewordDto> list = boardDao.tempRewordList(tempRewordNum);
		System.out.println("리워드 가져옴...");
		System.out.println("리워드 목록 가져오기 완료...");
		return list;
	}

	@Override
	public void tempInputReword(TempMakerRewordDto rewordDto) throws Exception {
		System.out.println("data : " + rewordDto);
		boardDao.tempInputReword(rewordDto);
		
	}

}
