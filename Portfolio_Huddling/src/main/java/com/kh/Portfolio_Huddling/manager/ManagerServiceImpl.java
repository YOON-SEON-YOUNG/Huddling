package com.kh.Portfolio_Huddling.manager;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.member.MemberVo;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Inject
	private ManagerDao managerDao;
	@Override
	public MemberVo memberShip(String member_id)throws Exception {
		return managerDao.memberShip(member_id);
	}
	@Override
	public int memberRating(String member_id) throws Exception {
		return managerDao.memberRating(member_id);
	}

}
