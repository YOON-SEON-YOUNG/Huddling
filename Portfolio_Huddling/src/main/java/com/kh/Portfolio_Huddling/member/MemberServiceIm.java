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

	@Override
	public int registerCheckId(MemberVo memberVo) throws Exception {
		return dao.registerCheckId(memberVo);
	}

	@Override
	public int registerCheckNick(MemberVo memberVo) throws Exception {
		return dao.registerCheckNick(memberVo);
	}

	@Override
	public void memberPrivacyUpdate(MemberVo memberVo) throws Exception {
		dao.memberPrivacyUpdate(memberVo);
	
	}
	public void memberRating(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		dao.memberRating(memberVo);
	}

	@Override
	public List<MemberVo> memberSearch(String search) throws Exception {
		// TODO Auto-generated method stub
		
		return dao.memberSearch(search);

	}

	@Override
	public void Profile_Register(MemberProfileVo profileVo) throws Exception {
		
		dao.Profile_Register(profileVo);
		
	}

	@Override
	public MemberProfileVo selectMemberProfileread(Integer profile_num) throws Exception {
		
		dao.selectMemberProfileread(profile_num);
		return dao.selectMemberProfileread(profile_num);
	}

}
