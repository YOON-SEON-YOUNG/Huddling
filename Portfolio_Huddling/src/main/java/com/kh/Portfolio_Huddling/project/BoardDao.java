package com.kh.Portfolio_Huddling.project;

import java.util.List;
import java.util.Map;

import com.kh.Portfolio_Huddling.maker.TempMakerMakersDto;
import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

public interface BoardDao {

	public BoardVo getDetail(int projectNum) throws Exception;
	public List<TempMakerRewordDto> getReword(int projectNum) throws Exception;
	public int totalPayment(int project_num) throws Exception;
	public String endDate(int project_num) throws Exception;
	public int totalSponser(int project_num) throws Exception;
	public TempMakerMakersDto makersInfo(int project_num) throws Exception;
	public int percent(int project_num) throws Exception;

}
