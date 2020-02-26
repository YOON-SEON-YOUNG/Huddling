package com.kh.Portfolio_Huddling.project;

import java.util.List;

import com.kh.Portfolio_Huddling.maker.TempMakerRewordDto;

public interface BoardService {

	public BoardVo getDetail(int projectNum) throws Exception;
	public List<TempMakerRewordDto> getReowrd(int projectNum) throws Exception;
	public int totalPayment(int project_num) throws Exception;
	public String endDate(int project_num) throws Exception;
	public int totalSponser(int project_num) throws Exception;
	public int totalPrice(int project_num) throws Exception;
}
