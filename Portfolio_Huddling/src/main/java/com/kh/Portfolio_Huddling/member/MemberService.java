package com.kh.Portfolio_Huddling.member;

public interface MemberService {
	public void register(MemberVo memberVo) throws Exception;
	public int loginId(MemberVo memberVo) throws Exception;
	public int loginPw(MemberVo memberVo) throws Exception;
}
