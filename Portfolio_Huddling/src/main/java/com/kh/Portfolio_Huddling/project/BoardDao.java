package com.kh.Portfolio_Huddling.project;

import java.util.List;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

public interface BoardDao {

	public BoardVo getDetail(int projectNum) throws Exception;
	public List<TempMakerRewordDto> getReword(int projectNum) throws Exception;

}
