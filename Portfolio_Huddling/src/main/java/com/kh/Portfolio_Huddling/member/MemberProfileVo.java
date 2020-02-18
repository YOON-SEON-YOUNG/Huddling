package com.kh.Portfolio_Huddling.member;

public class MemberProfileVo {
	private int profile_num;
	private String profile_id;
	private String profile_pic;
	private String profile_intro;
	private String profile_thumbimg;
	
	
	
	public MemberProfileVo() {
		super();
		// TODO Auto-generated constructor stub
	}



	public MemberProfileVo(int profile_num, String profile_id, String profile_pic, String profile_intro,
			String profile_thumbimg) {
		super();
		this.profile_num = profile_num;
		this.profile_id = profile_id;
		this.profile_pic = profile_pic;
		this.profile_intro = profile_intro;
		this.profile_thumbimg = profile_thumbimg;
	}



	public int getProfile_num() {
		return profile_num;
	}



	public void setProfile_num(int profile_num) {
		this.profile_num = profile_num;
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



	public String getProfile_thumbimg() {
		return profile_thumbimg;
	}



	public void setProfile_thumbimg(String profile_thumbimg) {
		this.profile_thumbimg = profile_thumbimg;
	}



	@Override
	public String toString() {
		return "MemberProfileVo [profile_num=" + profile_num + ", profile_id=" + profile_id + ", profile_pic="
				+ profile_pic + ", profile_intro=" + profile_intro + ", profile_thumbimg=" + profile_thumbimg + "]";
	}



	
	
	
	
}