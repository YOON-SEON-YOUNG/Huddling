package com.kh.Portfolio_Huddling.order;

import java.security.Timestamp;

public class RewordCartVo {
	private int reword_cart_num;
	private String member_id;
	private int reword_num;
	private int cartstock;
	private Timestamp adddate;
	
	public RewordCartVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RewordCartVo(int reword_cart_num, String member_id, int reword_num, int cartstock, Timestamp adddate) {
		super();
		this.reword_cart_num = reword_cart_num;
		this.member_id = member_id;
		this.reword_num = reword_num;
		this.cartstock = cartstock;
		this.adddate = adddate;
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

	public int getReword_num() {
		return reword_num;
	}

	public void setTemp_reword_num(int reword_num) {
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
		return "RewordCartVo [reword_cart_num=" + reword_cart_num + ", member_id=" + member_id + ", reword_num="
				+ reword_num + ", cartstock=" + cartstock + ", adddate=" + adddate + "]";
	}



	
	
	
	
	
	
}
