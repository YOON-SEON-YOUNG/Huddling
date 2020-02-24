package com.kh.Portfolio_Huddling.message;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.Portfolio_Huddling.member.MemberService;
import com.kh.Portfolio_Huddling.member.MemberVo;
import com.kh.Portfolio_Huddling.message.MessageService;
import com.kh.Portfolio_Huddling.message.MessageVo;
import com.kh.Portfolio_Huddling.project.ProjectService;

@Controller
@RequestMapping("/message/*")
public class MessageController {
	
	
	@Inject
	private MessageService messageService;
	
	// 관리자에게 메세지 전송
	@ResponseBody
	@RequestMapping(value = "/inquirySend", method = RequestMethod.POST)
	public String postInquirySend(MessageVo messageVo) throws Exception {
		messageService.insertMessage(messageVo);
		return "success";
	}
	
	// 채팅 리스트 불러오기
	@ResponseBody
	@RequestMapping(value = "/inquiryReadList", method = RequestMethod.POST)
	public List<MessageVo> postInquiryReadList(MessageVo messageVo) throws Exception {
		List<MessageVo> getList = messageService.selectMessageList(messageVo);
		List<String> strList = new ArrayList<String>();
		List<MessageVo> voList = new ArrayList<MessageVo>();
		for (int i = 0; i < getList.size(); i ++) {
			// 보낸이와 받는이
			String senderReceiver = getList.get(i).getMessage_sender() + "," + getList.get(i).getMessage_receiver();
//			String sumSender = senderReceiver.substring(0, senderReceiver.indexOf(","));
			if (!strList.contains(senderReceiver)) {
				voList.add(getList.get(i));
				strList.add(senderReceiver);
			}
		}
		return voList;
	}
	
	// 채팅내용 불러오기
	@ResponseBody
	@RequestMapping(value = "/inquiryRead", method = RequestMethod.POST)
	public List<MessageVo> postInquiryRead(MessageVo messageVo) throws Exception {
		return messageService.selectMessage(messageVo);
	}
}
