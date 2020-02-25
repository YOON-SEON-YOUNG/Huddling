package com.kh.Portfolio_Huddling.maker;

public class TempMakerProjectVo {
	private String user_id;
	private int project_num;
	private int project_state;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public int getProject_state() {
		return project_state;
	}
	public void setProject_state(int project_state) {
		this.project_state = project_state;
	}
	@Override
	public String toString() {
		return "TempMakerProjectVo [user_id=" + user_id + ", project_num=" + project_num + ", project_state="
				+ project_state + "]";
	}
}
