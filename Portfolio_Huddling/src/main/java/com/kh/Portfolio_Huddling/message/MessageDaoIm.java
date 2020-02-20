package com.kh.Portfolio_Huddling.message;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDaoIm implements MessageDao {
	
	@Inject
	private SqlSession sqlSession;
	
	private static String NAMESPACE = "com.kh.mappers.messageMapper";

	@Override
	public void insertMessage(MessageVo messageVo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(NAMESPACE + ".insertMessage", messageVo);
	}

	@Override
	public List<MessageVo> selectMessage(MessageVo messageVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectMessage", messageVo);
	}

	@Override
	public List<MessageVo> selectMessageList(MessageVo messageVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectMessageList", messageVo);
	}
	
	
	
}
