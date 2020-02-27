package com.kh.Portfolio_Huddling.maker;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.Portfolio_Huddling.project.ProjectVo;

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
	@Transactional
	public void tempStoryUpdate(TempMakerStoryDto storyDto) throws Exception {
		int project_num = storyDto.getTemp_story_num();
		boardDao.tempUploadImg(project_num);
		boardDao.tempUploadCategory(project_num);
		boardDao.tempUploadStory(project_num);
		boardDao.tempUploadTitle(project_num);
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
		System.out.println("리워드 가져옴...");
		List<TempMakerRewordDto> list = boardDao.tempRewordList(tempRewordNum);
		System.out.println("리워드 목록 가져오기 완료...");
		return list;
	}

	@Override
	public void tempInputReword(TempMakerRewordDto rewordDto) throws Exception {
		System.out.println("data : " + rewordDto);
		boardDao.tempInputReword(rewordDto);
	}

	@Override
	public void tempMakersInfoUpdate(TempMakerMakersDto makersDto) throws Exception {
		System.out.println("data : " + makersDto);
		boardDao.tempMakersInfo(makersDto);
	}

	@Override
	public TempMakerMakersDto tempLoadMakersInfo(int makerInfoNum) throws Exception {
		TempMakerMakersDto makersDto = boardDao.tempLoadMakersInfo(makerInfoNum);
		return makersDto;
	}

	@Override
	public TempMakerRewordDto tempOutputReword(int rewordNum) throws Exception {
		TempMakerRewordDto rewordDto = boardDao.tempOutPutReword(rewordNum);
		return rewordDto;
		
	}

	@Override
	public void tempRewordUpdate(TempMakerRewordDto rewordDto) throws Exception {
		boardDao.tempRewordUpdate(rewordDto);
		
	}

	@Override
	public void tempRewordDelete(int rewordNum) throws Exception {
		boardDao.tempRewordDelete(rewordNum);
		
	}

	@Override
	public List<ProjectVo> makerGetIntroList(String member_id) throws Exception {
		return boardDao.makerGetIntroList(member_id);
	}

	@Override
	@Transactional
	public int makerCreateBoard(String member_id) throws Exception {
		boardDao.makerInsertProject(member_id);
		int num = boardDao.makerProjectNum();
		return num;
	}

	@Override
	public int tempMakerChkBasic(int project_num) throws Exception {
		return boardDao.tempMakerChkBasic(project_num);
	}

	@Override
	public int tempMakerChkStory(int project_num) throws Exception {
		return boardDao.tempMakerChkStory(project_num);
	}

	@Override
	public int tempMakerChkRequir(int project_num) throws Exception {
		return boardDao.tempMakerChkRequir(project_num);
	}

	@Override
	public int tempMakerChkMakersInfo(int project_num) throws Exception {
		return boardDao.tempMakerChkMakersInfo(project_num);
	}

	@Override
	public int tempMakerChkReword(int project_num) throws Exception {
		return boardDao.tempMakerChkReword(project_num);
	}

	@Override
	public int submitProject(int project_num) throws Exception {
		int submit = boardDao.submitProject(project_num);
		if(submit == 0) {
			System.out.println("제출 실패...");
		}
		System.out.println("제출 성공...");
		return submit;
	}
}
