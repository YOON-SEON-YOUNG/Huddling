package com.kh.Portfolio_Huddling.message;

import java.util.List;

public interface MessageService {
	public void insertMessage(MessageVo messageVo) throws Exception;
	public List<MessageVo> selectMessage(MessageVo messageVo) throws Exception;
	public List<MessageVo> selectMessageList(MessageVo messageVo) throws Exception;
}
