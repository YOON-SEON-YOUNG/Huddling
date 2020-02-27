package com.kh.Portfolio_Huddling.project;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.maker.TempMakerMakersDto;
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

	@Override
	public int totalPayment(int project_num) throws Exception {
		int payment = boardDao.totalPayment(project_num);
		if (payment == 0) {
			return 0;
		}
		return payment;
	}

	@Override
	public String endDate(int project_num) throws Exception {
		return boardDao.endDate(project_num);
	}

	@Override
	public int totalSponser(int project_num) throws Exception {
		int sponser = boardDao.totalSponser(project_num);
		if(sponser == 0) {
		return 0;
		}
		return sponser;
	}

	@Override
	public Map<Object, Integer> totalPrice(int project_num) throws Exception {
		Map<Object, Integer> price = boardDao.totalPrice(project_num);
		return price;
	}

	@Override
	public TempMakerMakersDto makersInfo(int project_num) throws Exception {
		return boardDao.makersInfo(project_num);
	}

}
