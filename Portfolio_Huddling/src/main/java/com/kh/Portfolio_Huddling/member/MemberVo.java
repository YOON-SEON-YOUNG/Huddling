package com.kh.Portfolio_Huddling.member;

public class MemberVo {

	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_nickname;
	private String member_email;
	private String member_address;
	private String member_call;
	private int member_rating;
	private int member_point;



	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}



	public MemberVo(String member_id, String member_pw, String member_name, String member_nickname, String member_email,
			String member_address, String member_call, int member_rating, int member_point) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_nickname = member_nickname;
		this.member_email = member_email;
		this.member_address = member_address;
		this.member_call = member_call;
		this.member_rating = member_rating;
		this.member_point = member_point;
	}



	public String getMember_id() {
		return member_id;
	}



	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}



	public String getMember_pw() {
		return member_pw;
	}



	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}



	public String getMember_name() {
		return member_name;
	}



	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}



	public String getMember_nickname() {
		return member_nickname;
	}



	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}



	public String getMember_email() {
		return member_email;
	}



	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}



	public String getMember_address() {
		return member_address;
	}



	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}



	public String getMember_call() {
		return member_call;
	}



	public void setMember_call(String member_call) {
		this.member_call = member_call;
	}



	public int getMember_rating() {
		return member_rating;
	}



	public void setMember_rating(int member_rating) {
		this.member_rating = member_rating;
	}



	public int getMember_point() {
		return member_point;
	}



	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}



	@Override
	public String toString() {
		return "MemberVo [member_id=" + member_id + ", member_pw=" + member_pw + ", member_name=" + member_name
				+ ", member_nickname=" + member_nickname + ", member_email=" + member_email + ", member_address="
				+ member_address + ", member_call=" + member_call + ", member_rating=" + member_rating
				+ ", member_point=" + member_point + "]";
	}




	

}
