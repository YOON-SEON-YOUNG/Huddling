package com.kh.Portfolio_Huddling.message;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MessageServiceIm implements MessageService {
	
	@Inject
	private MessageDao messageDao;

	@Override
	public void insertMessage(MessageVo messageVo) throws Exception {
		// TODO Auto-generated method stub
		messageDao.insertMessage(messageVo);
	}

	@Override
	public List<MessageVo> selectMessage(MessageVo messageVo) throws Exception {
		// TODO Auto-generated method stub
		return messageDao.selectMessage(messageVo);
	}

	@Override
	public List<MessageVo> selectMessageList(MessageVo messageVo) throws Exception {
		// TODO Auto-generated method stub
		return messageDao.selectMessageList(messageVo);
	}
	
	
	
}
