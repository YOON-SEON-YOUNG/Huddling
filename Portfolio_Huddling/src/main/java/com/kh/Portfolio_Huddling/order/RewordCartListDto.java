package com.kh.Portfolio_Huddling.order;

import java.security.Timestamp;

public class RewordCartListDto {
	private int reword_cart_num;
	private String member_id;
	private int project_num;
	private int reword_num;
	private int cartstock;
	private Timestamp adddate;
	
	private int temp_project_num;
	private int temp_reword_num;
	private String temp_reword_price;
	private String temp_reword_name;
	private String temp_reword_desc;
	private String temp_reword_option;
	private String temp_reword_trans;
	private String temp_reword_trans_price;
	private String temp_reword_count;
	private String temp_reword_trans_month;
	private String temp_reword_trans_days;
	
	
	public RewordCartListDto() {
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


	public int getTemp_project_num() {
		return temp_project_num;
	}


	public void setTemp_project_num(int temp_project_num) {
		this.temp_project_num = temp_project_num;
	}


	public int getTemp_reword_num() {
		return temp_reword_num;
	}


	public void setTemp_reword_num(int temp_reword_num) {
		this.temp_reword_num = temp_reword_num;
	}


	public String getTemp_reword_price() {
		return temp_reword_price;
	}


	public void setTemp_reword_price(String temp_reword_price) {
		this.temp_reword_price = temp_reword_price;
	}


	public String getTemp_reword_name() {
		return temp_reword_name;
	}


	public void setTemp_reword_name(String temp_reword_name) {
		this.temp_reword_name = temp_reword_name;
	}


	public String getTemp_reword_desc() {
		return temp_reword_desc;
	}


	public void setTemp_reword_desc(String temp_reword_desc) {
		this.temp_reword_desc = temp_reword_desc;
	}


	public String getTemp_reword_option() {
		return temp_reword_option;
	}


	public void setTemp_reword_option(String temp_reword_option) {
		this.temp_reword_option = temp_reword_option;
	}


	public String getTemp_reword_trans() {
		return temp_reword_trans;
	}


	public void setTemp_reword_trans(String temp_reword_trans) {
		this.temp_reword_trans = temp_reword_trans;
	}


	public String getTemp_reword_trans_price() {
		return temp_reword_trans_price;
	}


	public void setTemp_reword_trans_price(String temp_reword_trans_price) {
		this.temp_reword_trans_price = temp_reword_trans_price;
	}


	public String getTemp_reword_count() {
		return temp_reword_count;
	}


	public void setTemp_reword_count(String temp_reword_count) {
		this.temp_reword_count = temp_reword_count;
	}


	public String getTemp_reword_trans_month() {
		return temp_reword_trans_month;
	}


	public void setTemp_reword_trans_month(String temp_reword_trans_month) {
		this.temp_reword_trans_month = temp_reword_trans_month;
	}


	public String getTemp_reword_trans_days() {
		return temp_reword_trans_days;
	}


	public void setTemp_reword_trans_days(String temp_reword_trans_days) {
		this.temp_reword_trans_days = temp_reword_trans_days;
	}


	@Override
	public String toString() {
		return "RewordCartListDto [reword_cart_num=" + reword_cart_num + ", member_id=" + member_id + ", project_num="
				+ project_num + ", reword_num=" + reword_num + ", cartstock=" + cartstock + ", adddate=" + adddate
				+ ", temp_project_num=" + temp_project_num + ", temp_reword_num=" + temp_reword_num
				+ ", temp_reword_price=" + temp_reword_price + ", temp_reword_name=" + temp_reword_name
				+ ", temp_reword_desc=" + temp_reword_desc + ", temp_reword_option=" + temp_reword_option
				+ ", temp_reword_trans=" + temp_reword_trans + ", temp_reword_trans_price=" + temp_reword_trans_price
				+ ", temp_reword_count=" + temp_reword_count + ", temp_reword_trans_month=" + temp_reword_trans_month
				+ ", temp_reword_trans_days=" + temp_reword_trans_days + "]";
	}
	
	
	
	

}
