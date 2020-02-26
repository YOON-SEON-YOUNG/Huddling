package com.kh.Portfolio_Huddling.member;

import java.util.List;

import com.kh.Portfolio_Huddling.maker.TempMakerProjectVo;
import com.kh.Portfolio_Huddling.project.ProjectVo;

public interface MemberDao {
	public void register(MemberVo memberVo) throws Exception;
	public int loginId(MemberVo memberVo) throws Exception;
	public int loginPw(MemberVo memberVo) throws Exception;
	public MemberVo loginInfo(MemberVo memberVo) throws Exception;
	public List<MemberVo> memberList(MemberVo memberVo) throws Exception;
	public int registerCheckId(MemberVo memberVo)throws Exception;
	public int registerCheckNick(MemberVo memberVo)throws Exception;
	public void memberPrivacyUpdate(MemberVo memberVo)throws Exception;
	//검색
	public List<MemberVo> memberSearch(String search) throws Exception;
	//검색 결과
	public int memberRating(MemberVo memberVo) throws Exception;
	public int privacyUpdateAddress(MemberVo memberVo)throws Exception;
	public int privacyUpdateCall(MemberVo memberVo)throws Exception;
	public int privacyUpdateEmail(MemberVo memberVo)throws Exception;
	public int privacyUpdatePw(MemberVo memberVo)throws Exception;
	public int privacyUpdateName(MemberVo memberVo)throws Exception;
	// 프로필 등록
	public void Profile_Register(MemberProfileVo profileVo) throws Exception;
	// 프로필 조회 
	public MemberProfileVo selectMemberProfileread(String member_id) throws Exception;
	// 멤버 포인트 업데이트
	public void updatePoint(MemberVo memberVo) throws Exception;
	// 내가 올린 프로젝트
	public List<TempMakerProjectVo> myRegistList(String user_id) throws Exception;
	
	

	

}