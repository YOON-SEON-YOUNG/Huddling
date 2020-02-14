package com.kh.Portfolio_Huddling.member;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MemberServiceIm implements MemberService {

	@Inject
	private MemberDao dao;
	
	@Override
	public void register(MemberVo memberVo) throws Exception {
		dao.register(memberVo);
	}

	@Override
	public int loginId(MemberVo memberVo) throws Exception {
		return dao.loginId(memberVo);
	}

	@Override
	public int loginPw(MemberVo memberVo) throws Exception {
		return dao.loginPw(memberVo);
	}

	@Override
	public MemberVo loginInfo(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		return dao.loginInfo(memberVo);
	}

	@Override
	public List<MemberVo> memberList(MemberVo memberVo) throws Exception {
		
		return dao.memberList(memberVo);
	}

}
