package com.kh.Portfolio_Huddling.member;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.Portfolio_Huddling.maker.TempMakerProjectVo;
import com.kh.Portfolio_Huddling.project.ProjectVo;

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
	public int memberRating(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		return dao.memberRating(memberVo);
	}

	@Override
	public List<MemberVo> memberSearch(String search) throws Exception {
		// TODO Auto-generated method stub
		
		return dao.memberSearch(search);

	}

	// 프로필 등록
	@Override
	public void Profile_Register(MemberProfileVo profileVo) throws Exception {
		
		dao.Profile_Register(profileVo);
		
	}
	
	// 프로필 조회
	@Override
	public MemberProfileVo selectMemberById(String member_id) throws Exception {
		
		dao.selectMemberProfileread(member_id);
		return dao.selectMemberProfileread(member_id);
	}

	
	@Override
	public int privacyUpdateAddress(MemberVo memberVo) throws Exception {
		return dao.privacyUpdateAddress(memberVo);
	}

	@Override
	public int privacyUpdateCall(MemberVo memberVo) throws Exception {
		return dao.privacyUpdateCall(memberVo);
	}

	@Override
	public int privacyUpdateEmail(MemberVo memberVo) throws Exception {
		return dao.privacyUpdateEmail(memberVo);
	}

	@Override
	public int privacyUpdatePw(MemberVo memberVo) throws Exception {
		return dao.privacyUpdatePw(memberVo);
	}

	@Override
	public int privacyUpdateName(MemberVo memberVo) throws Exception {
		return dao.privacyUpdateName(memberVo);
	}

	@Override
	public void updatePoint(MemberVo memberVo) throws Exception {
		dao.updatePoint(memberVo);
		
	}

	@Override
	public List<ProjectVo> myRegistList(String member_id) throws Exception {
		return dao.myRegistList(member_id);
	}

	








}
