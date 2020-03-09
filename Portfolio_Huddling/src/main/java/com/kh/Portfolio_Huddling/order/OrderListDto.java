package com.kh.Portfolio_Huddling.order;

import java.security.Timestamp;

public class OrderListDto {
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
	
	private int order_details_num;
	private int reword_num;
	private String cartstock;
	
	private String temp_reword_price;
	private String temp_reword_num;
	private String temp_reword_name;
	private String temp_reword_desc;
	private String temp_reword_option;
	private String temp_reword_trans;
	private String temp_reword_trans_price;
	private String temp_reword_count;
	private String temp_reword_trans_month;
	private String temp_reword_trans_days;
	
	private String user_id;
	private String project_state;	
	private int    project_num;  
	private String project_category;
	private String project_image; 
	private String project_story; 
	private String project_name; 
	private int    project_app;
	
	public OrderListDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderListDto(String order_id, String member_id, String order_rec, String useraddr1, String useraddr2,
			String useraddr3, String order_phone, int amount, Timestamp order_date, String delivery, String point,
			String order_option, int order_details_num, int reword_num, String cartstock, String temp_reword_price,
			String temp_reword_num, String temp_reword_name, String temp_reword_desc, String temp_reword_option,
			String temp_reword_trans, String temp_reword_trans_price, String temp_reword_count,
			String temp_reword_trans_month, String temp_reword_trans_days, String user_id, String project_state,
			int project_num, String project_category, String project_image, String project_story, String project_name,
			int project_app) {
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
		this.order_details_num = order_details_num;
		this.reword_num = reword_num;
		this.cartstock = cartstock;
		this.temp_reword_price = temp_reword_price;
		this.temp_reword_num = temp_reword_num;
		this.temp_reword_name = temp_reword_name;
		this.temp_reword_desc = temp_reword_desc;
		this.temp_reword_option = temp_reword_option;
		this.temp_reword_trans = temp_reword_trans;
		this.temp_reword_trans_price = temp_reword_trans_price;
		this.temp_reword_count = temp_reword_count;
		this.temp_reword_trans_month = temp_reword_trans_month;
		this.temp_reword_trans_days = temp_reword_trans_days;
		this.user_id = user_id;
		this.project_state = project_state;
		this.project_num = project_num;
		this.project_category = project_category;
		this.project_image = project_image;
		this.project_story = project_story;
		this.project_name = project_name;
		this.project_app = project_app;
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

	public int getOrder_details_num() {
		return order_details_num;
	}

	public void setOrder_details_num(int order_details_num) {
		this.order_details_num = order_details_num;
	}

	public int getReword_num() {
		return reword_num;
	}

	public void setReword_num(int reword_num) {
		this.reword_num = reword_num;
	}

	public String getCartstock() {
		return cartstock;
	}

	public void setCartstock(String cartstock) {
		this.cartstock = cartstock;
	}

	public String getTemp_reword_price() {
		return temp_reword_price;
	}

	public void setTemp_reword_price(String temp_reword_price) {
		this.temp_reword_price = temp_reword_price;
	}

	public String getTemp_reword_num() {
		return temp_reword_num;
	}

	public void setTemp_reword_num(String temp_reword_num) {
		this.temp_reword_num = temp_reword_num;
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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getProject_state() {
		return project_state;
	}

	public void setProject_state(String project_state) {
		this.project_state = project_state;
	}

	public int getProject_num() {
		return project_num;
	}

	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}

	public String getProject_category() {
		return project_category;
	}

	public void setProject_category(String project_category) {
		this.project_category = project_category;
	}

	public String getProject_image() {
		return project_image;
	}

	public void setProject_image(String project_image) {
		this.project_image = project_image;
	}

	public String getProject_story() {
		return project_story;
	}

	public void setProject_story(String project_story) {
		this.project_story = project_story;
	}

	public String getProject_name() {
		return project_name;
	}

	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}

	public int getProject_app() {
		return project_app;
	}

	public void setProject_app(int project_app) {
		this.project_app = project_app;
	}

	@Override
	public String toString() {
		return "OrderListDto [order_id=" + order_id + ", member_id=" + member_id + ", order_rec=" + order_rec
				+ ", useraddr1=" + useraddr1 + ", useraddr2=" + useraddr2 + ", useraddr3=" + useraddr3
				+ ", order_phone=" + order_phone + ", amount=" + amount + ", order_date=" + order_date + ", delivery="
				+ delivery + ", point=" + point + ", order_option=" + order_option + ", order_details_num="
				+ order_details_num + ", reword_num=" + reword_num + ", cartstock=" + cartstock + ", temp_reword_price="
				+ temp_reword_price + ", temp_reword_num=" + temp_reword_num + ", temp_reword_name=" + temp_reword_name
				+ ", temp_reword_desc=" + temp_reword_desc + ", temp_reword_option=" + temp_reword_option
				+ ", temp_reword_trans=" + temp_reword_trans + ", temp_reword_trans_price=" + temp_reword_trans_price
				+ ", temp_reword_count=" + temp_reword_count + ", temp_reword_trans_month=" + temp_reword_trans_month
				+ ", temp_reword_trans_days=" + temp_reword_trans_days + ", user_id=" + user_id + ", project_state="
				+ project_state + ", project_num=" + project_num + ", project_category=" + project_category
				+ ", project_image=" + project_image + ", project_story=" + project_story + ", project_name="
				+ project_name + ", project_app=" + project_app + "]";
	}
	
	
	
	

}
