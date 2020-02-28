package com.kh.Portfolio_Huddling.order;

import java.security.Timestamp;

public class RewordCartVo {
	private int reword_cart_num;
	private String member_id;
	private int project_num;
	private int reword_num;
	private int cartstock;
	private Timestamp adddate;
	public RewordCartVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getReword_cart_num() {
		return reword_cart_num;
	}
	public void setReword_cart_num(int reword_cart_num) {
		this.reword_cart_num = reword_cart_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public int getReword_num() {
		return reword_num;
	}
	public void setReword_num(int reword_num) {
		this.reword_num = reword_num;
	}
	public int getCartstock() {
		return cartstock;
	}
	public void setCartstock(int cartstock) {
		this.cartstock = cartstock;
	}
	public Timestamp getAdddate() {
		return adddate;
	}
	public void setAdddate(Timestamp adddate) {
		this.adddate = adddate;
	}
	@Override
	public String toString() {
		return "RewordCartVo [reword_cart_num=" + reword_cart_num + ", member_id=" + member_id + ", project_num="
				+ project_num + ", reword_num=" + reword_num + ", cartstock=" + cartstock + ", adddate=" + adddate
				+ "]";
	}
	
	
	
	
	
	
}
