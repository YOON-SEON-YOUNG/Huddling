package com.kh.Portfolio_Huddling.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoIm implements MemberDao {

	private static final String NAMESPACE = "com.kh.mappers.memberMapper";
	
	@Inject
	SqlSession sqlsession;
	
	@Override
	public void register(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(NAMESPACE + ".insertMember", memberVo);
	}

	@Override
	public int loginId(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		
		return (int)sqlsession.selectOne(NAMESPACE + ".selectMemberId", memberVo);
	}

	@Override
	public int loginPw(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(NAMESPACE + ".selectMemberPw", memberVo);
	}

	@Override
	public MemberVo loginInfo(MemberVo memberVo) throws Exception {
		return sqlsession.selectOne(NAMESPACE + ".selectMemberInfo", memberVo);
	}

	@Override
	public List<MemberVo> memberList(MemberVo memberVo) throws Exception {
		return sqlsession.selectList(NAMESPACE + ".selectMemberList", memberVo);
	}

	@Override
	public int registerCheckId(MemberVo memberVo) throws Exception {
			
		return (int)sqlsession.selectOne(NAMESPACE  + ".registerCheckId",memberVo);
	}

	@Override
	public int registerCheckNick(MemberVo memberVo) throws Exception {
		
		return (int)sqlsession.selectOne(NAMESPACE + ".registerCheckNick",memberVo);
	}

	@Override
	public void memberPrivacyUpdate(MemberVo memberVo) throws Exception {
			sqlsession.update(NAMESPACE + ".privacyUpdate",memberVo);
	}

}
