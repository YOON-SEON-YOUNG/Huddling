package com.kh.Portfolio_Huddling.manager;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.Portfolio_Huddling.member.MemberVo;
@Repository
public class ManagerDaoImpl implements ManagerDao {
	
	private static final String NAMESPACE = "com.kh.mappers.managerMapper";
	@Inject
	SqlSession session;
	
	@Override
	public MemberVo memberShip(String member_id)throws Exception {
		return  session.selectOne(NAMESPACE + ".memberShip",member_id);
	}

	@Override
	public int memberRating(String member_id) throws Exception {
		return session.selectOne(NAMESPACE + ".memberRating",member_id);
	}

}
