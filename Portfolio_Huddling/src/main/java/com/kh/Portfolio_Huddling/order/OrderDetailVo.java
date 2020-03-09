package com.kh.Portfolio_Huddling.order;

public class OrderDetailVo {
	private int order_details_num;
	private String order_id;
	private int reword_num;
	private String cartstock;
	
	public OrderDetailVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderDetailVo(int order_details_num, String order_id, int reword_num, String cartstock) {
		super();
		this.order_details_num = order_details_num;
		this.order_id = order_id;
		this.reword_num = reword_num;
		this.cartstock = cartstock;
	}
	public int getOrder_details_num() {
		return order_details_num;
	}
	public void setOrder_details_num(int order_details_num) {
		this.order_details_num = order_details_num;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
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
	@Override
	public String toString() {
		return "OrderDetailVo [order_details_num=" + order_details_num + ", order_id=" + order_id + ", reword_num="
				+ reword_num + ", cartstock=" + cartstock + "]";
	}
	
	

}
