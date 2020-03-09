package com.kh.Portfolio_Huddling.order;

import java.security.Timestamp;

public class OrderVo {
	private String order_id;
	private String member_id;
	private String order_rec;
	private String useraddr1;
	private String useraddr2;
	private String useraddr3;
	private String order_phone;
	private int amount;
	private Timestamp order_date;
	private String delivery;
	private String point;
	private String order_option;
	
	
	public OrderVo() {
		super();
		// TODO Auto-generated constructor stub
	}


	public OrderVo(String order_id, String member_id, String order_rec, String useraddr1, String useraddr2,
			String useraddr3, String order_phone, int amount, Timestamp order_date, String delivery, String point,
			String order_option) {
		super();
		this.order_id = order_id;
		this.member_id = member_id;
		this.order_rec = order_rec;
		this.useraddr1 = useraddr1;
		this.useraddr2 = useraddr2;
		this.useraddr3 = useraddr3;
		this.order_phone = order_phone;
		this.amount = amount;
		this.order_date = order_date;
		this.delivery = delivery;
		this.point = point;
		this.order_option = order_option;
	}


	public String getOrder_id() {
		return order_id;
	}


	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public String getOrder_rec() {
		return order_rec;
	}


	public void setOrder_rec(String order_rec) {
		this.order_rec = order_rec;
	}


	public String getUseraddr1() {
		return useraddr1;
	}


	public void setUseraddr1(String useraddr1) {
		this.useraddr1 = useraddr1;
	}


	public String getUseraddr2() {
		return useraddr2;
	}


	public void setUseraddr2(String useraddr2) {
		this.useraddr2 = useraddr2;
	}


	public String getUseraddr3() {
		return useraddr3;
	}


	public void setUseraddr3(String useraddr3) {
		this.useraddr3 = useraddr3;
	}


	public String getOrder_phone() {
		return order_phone;
	}


	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public Timestamp getOrder_date() {
		return order_date;
	}


	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}


	public String getDelivery() {
		return delivery;
	}


	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}


	public String getPoint() {
		return point;
	}


	public void setPoint(String point) {
		this.point = point;
	}


	public String getOrder_option() {
		return order_option;
	}


	public void setOrder_option(String order_option) {
		this.order_option = order_option;
	}


	@Override
	public String toString() {
		return "OrderVo [order_id=" + order_id + ", member_id=" + member_id + ", order_rec=" + order_rec
				+ ", useraddr1=" + useraddr1 + ", useraddr2=" + useraddr2 + ", useraddr3=" + useraddr3
				+ ", order_phone=" + order_phone + ", amount=" + amount + ", order_date=" + order_date + ", delivery="
				+ delivery + ", point=" + point + ", order_option=" + order_option + "]";
	}


	
	
	
	

}
