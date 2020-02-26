package com.kh.Portfolio_Huddling.project;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDao boardDao;

	@Override
	public BoardVo getDetail(int projectNum) throws Exception {
		return boardDao.getDetail(projectNum);
	}

	@Override
	public List<TempMakerRewordDto> getReowrd(int projectNum) throws Exception {
		List<TempMakerRewordDto> list = boardDao.getReword(projectNum);
		return list;
	}

}
