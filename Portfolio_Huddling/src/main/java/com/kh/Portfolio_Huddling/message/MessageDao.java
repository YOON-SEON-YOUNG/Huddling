package com.kh.Portfolio_Huddling.message;

import java.util.List;

import org.aspectj.bridge.Message;

public interface MessageDao {
	public void insertMessage(MessageVo messageVo) throws Exception;
	public List<MessageVo> selectMessage(MessageVo messageVo) throws Exception;
	public List<MessageVo> selectMessageList(MessageVo messageVo) throws Exception;
	public void updateMessageRead(MessageVo messageVo) throws Exception;
}
