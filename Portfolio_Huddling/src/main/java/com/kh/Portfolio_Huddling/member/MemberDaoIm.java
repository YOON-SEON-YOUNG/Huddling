package com.kh.Portfolio_Huddling.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

public class MemberDaoIm implements MemberDao {

	private static final String NAMESPACE = "com.kh.mappers.memberMapper";
	
	@Inject
	SqlSession sqlsession;
	
	@Override
	public void register(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(NAMESPACE + ".insertMember", memberVo);
	}

}
