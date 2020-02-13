package com.kh.Portfolio_Huddling.member;

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

}
