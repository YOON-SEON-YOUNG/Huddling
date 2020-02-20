package com.kh.Portfolio_Huddling.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class MemberDaoIm implements MemberDao {

	private static final String NAMESPACE = "com.kh.mappers.memberMapper";
	
	@Inject
	SqlSession sqlsession;
	
	@Transactional
	@Override
	public void register(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(NAMESPACE + ".insertMember", memberVo);
		String profile_id = memberVo.getMember_id();
		sqlsession.insert(NAMESPACE + ".insertMemberProfile", profile_id);
		String member_id = memberVo.getMember_id();
		sqlsession.insert(NAMESPACE + ".insertPoint", member_id); 
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
	

	public int memberRating(MemberVo memberVo) throws Exception {
		return sqlsession.update(NAMESPACE + ".updateMemberRating", memberVo);
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

	public List<MemberVo> memberSearch(String search) throws Exception {
		// TODO Auto-generated method stub
		
		return sqlsession.selectList(NAMESPACE + ".selectMemberSearch", search);

}
	
	// 프로필 등록 
	@Override
	public void Profile_Register(MemberProfileVo profileVo) throws Exception {
		sqlsession.update(NAMESPACE + ".updateMemberProfile", profileVo);
		
	}

	// 프로필 조회 
	@Override
	public MemberProfileVo selectMemberProfileread(String member_id) throws Exception {
		// TODO Auto-generated method stub
		MemberProfileVo profileVo = sqlsession.selectOne(NAMESPACE + ".selectMemberProfile", member_id);
		return profileVo;
	}

	@Override
	public int privacyUpdateAddress(MemberVo memberVo) throws Exception {
		
		return (int)sqlsession.selectOne(NAMESPACE + ".privacyUpdateAddress",memberVo);
	}

	@Override
	public int privacyUpdateCall(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		return (int)sqlsession.selectOne(NAMESPACE + ".privacyUpdateCall",memberVo);
	}

	@Override
	public int privacyUpdateEmail(MemberVo memberVo) throws Exception {
		// TODO Auto-generated method stub
		return (int)sqlsession.selectOne(NAMESPACE + ".privacyUpdateEmail",memberVo);
	}

	@Override
	public int privacyUpdatePw(MemberVo memberVo) throws Exception {
		return (int)sqlsession.selectOne(NAMESPACE + ".privacyUpdatePw",memberVo);
	}

	@Override
	public int privacyUpdateName(MemberVo memberVo) throws Exception {
		return (int)sqlsession.selectOne(NAMESPACE + ".privacyUpdateName",memberVo);
	}

	
	// 포인트

	@Override
	public void addPoint(String member_id, int point) throws Exception {
		Map<String,Object>map = new HashMap<String, Object>();
		map.put("member_id", member_id);
		map.put("point", point);
		sqlsession.insert(NAMESPACE+".addPoint",map);
		
	}


	

	
}
