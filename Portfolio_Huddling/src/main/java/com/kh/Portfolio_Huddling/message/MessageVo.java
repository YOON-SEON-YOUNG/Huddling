package com.kh.Portfolio_Huddling.message;

import java.sql.Timestamp;

public class MessageVo {
	private int message_num;
	private String message_content;
	private Timestamp message_date;
	private String message_sender;
	private String message_receiver;
	private Timestamp message_read;
	private int project_num;

	public MessageVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MessageVo(int message_num, String message_content, Timestamp message_date, String message_sender,
			String message_receiver, Timestamp message_read, int project_num) {
		super();
		this.message_num = message_num;
		this.message_content = message_content;
		this.message_date = message_date;
		this.message_sender = message_sender;
		this.message_receiver = message_receiver;
		this.message_read = message_read;
		this.project_num = project_num;
	}

	public int getMessage_num() {
		return message_num;
	}

	public void setMessage_num(int message_num) {
		this.message_num = message_num;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

	public Timestamp getMessage_date() {
		return message_date;
	}

	public void setMessage_date(Timestamp message_date) {
		this.message_date = message_date;
	}

	public String getMessage_sender() {
		return message_sender;
	}

	public void setMessage_sender(String message_sender) {
		this.message_sender = message_sender;
	}

	public String getMessage_receiver() {
		return message_receiver;
	}

	public void setMessage_receiver(String message_receiver) {
		this.message_receiver = message_receiver;
	}

	public Timestamp getMessage_read() {
		return message_read;
	}

	public void setMessage_read(Timestamp message_read) {
		this.message_read = message_read;
	}

	public int getProject_num() {
		return project_num;
	}

	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}

	@Override
	public String toString() {
		return "MessageVo [message_num=" + message_num + ", message_content=" + message_content + ", message_date="
				+ message_date + ", message_sender=" + message_sender + ", message_receiver=" + message_receiver
				+ ", message_read=" + message_read + ", project_num=" + project_num + "]";
	}

}
