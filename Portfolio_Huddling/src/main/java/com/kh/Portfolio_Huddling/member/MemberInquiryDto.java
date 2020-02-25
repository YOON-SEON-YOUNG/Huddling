package com.kh.Portfolio_Huddling.member;

public class MemberInquiryDto {
	private int inquiry;
	private String project_name;
	private String receiver;

	public MemberInquiryDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberInquiryDto(int inquiry, String project_name, String receiver) {
		super();
		this.inquiry = inquiry;
		this.project_name = project_name;
		this.receiver = receiver;
	}

	public int getInquiry() {
		return inquiry;
	}

	public void setInquiry(int inquiry) {
		this.inquiry = inquiry;
	}

	public String getProject_name() {
		return project_name;
	}

	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	@Override
	public String toString() {
		return "MemberInquiryDto [inquiry=" + inquiry + ", project_name=" + project_name + ", receiver=" + receiver
				+ "]";
	}

}
