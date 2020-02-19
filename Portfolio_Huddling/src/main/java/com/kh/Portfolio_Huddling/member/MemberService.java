package com.kh.Portfolio_Huddling.member;

import java.util.List;

public interface MemberService {
	public void register(MemberVo memberVo) throws Exception;
	public int loginId(MemberVo memberVo) throws Exception;
	public int loginPw(MemberVo memberVo) throws Exception;
	public MemberVo loginInfo(MemberVo memberVo) throws Exception;
	public List<MemberVo> memberList(MemberVo memberVo) throws Exception;
	public int registerCheckId(MemberVo memberVo) throws Exception;
	public int registerCheckNick(MemberVo memberVo)throws Exception;
	public void memberPrivacyUpdate(MemberVo memberVo)throws Exception;
	public List<MemberVo> memberSearch(String search) throws Exception;
	public void memberRating(MemberVo memberVo) throws Exception;
	public int privacyUpdateAddress(MemberVo memberVo)throws Exception;
	public int privacyUpdateCall(MemberVo memberVo)throws Exception;
	public int privacyUpdateEmail(MemberVo memberVo)throws Exception;
	public int privacyUpdatePw(MemberVo memberVo)throws Exception;
	public int privacyUpdateName(MemberVo memberVo)throws Exception;
	// 프로필 등록
	public void Profile_Register(MemberProfileVo profileVo) throws Exception;
	// 프로필 조회
	public MemberProfileVo selectMemberById(String member_id) throws Exception;
	// 포인트 구매 
	public void pointBuy(PointVo pointVo) throws Exception;
	// 포인트 조회
	public PointVo selectPoint(String member_id) throws Exception;

}
