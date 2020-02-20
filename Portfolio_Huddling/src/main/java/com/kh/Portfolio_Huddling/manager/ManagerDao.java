package com.kh.Portfolio_Huddling.manager;

import java.util.List;

import com.kh.Portfolio_Huddling.member.MemberVo;

public interface ManagerDao {
	
	public MemberVo memberShip(String member_id)throws Exception;
	public int memberRating(String member_id)throws Exception;
}
