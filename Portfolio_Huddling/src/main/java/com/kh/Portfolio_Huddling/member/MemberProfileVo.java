package com.kh.Portfolio_Huddling.member;

public class MemberProfileVo {
	private String profile_id;
	private String profile_pic;
	private String profile_intro;
	
	
	
	public MemberProfileVo() {
		super();
		// TODO Auto-generated constructor stub
	}



	public MemberProfileVo(String profile_id, String profile_pic, String profile_intro) {
		super();
		this.profile_id = profile_id;
		this.profile_pic = profile_pic;
		this.profile_intro = profile_intro;
	}



	public String getProfile_id() {
		return profile_id;
	}



	public void setProfile_id(String profile_id) {
		this.profile_id = profile_id;
	}



	public String getProfile_pic() {
		return profile_pic;
	}



	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}



	public String getProfile_intro() {
		return profile_intro;
	}



	public void setProfile_intro(String profile_intro) {
		this.profile_intro = profile_intro;
	}



	@Override
	public String toString() {
		return "MemberProfileVo [profile_id=" + profile_id + ", profile_pic=" + profile_pic + ", profile_intro="
				+ profile_intro + "]";
	}

	

	
	
	
}