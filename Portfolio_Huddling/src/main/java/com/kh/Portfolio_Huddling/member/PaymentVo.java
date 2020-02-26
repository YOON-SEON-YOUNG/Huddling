package com.kh.Portfolio_Huddling.member;

import java.sql.Timestamp;

public class PaymentVo {
	private int payment_num;
	private int project_num;
	private int reword_num;
	private Timestamp payment_date;
	private int payment_point;
	
	public PaymentVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
		
	
	public PaymentVo(int payment_num, int project_num, int reword_num, Timestamp payment_date, int payment_point) {
		super();
		this.payment_num = payment_num;
		this.project_num = project_num;
		this.reword_num = reword_num;
		this.payment_date = payment_date;
		this.payment_point = payment_point;
	}



	public int getPayment_num() {
		return payment_num;
	}
	public void setPayment_num(int payment_num) {
		this.payment_num = payment_num;
	}
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public int getreword_num() {
		return reword_num;
	}
	public void setReward_num(int reword_num) {
		this.reword_num = reword_num;
	}
	public Timestamp getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(Timestamp payment_date) {
		this.payment_date = payment_date;
	}
	public int getPayment_point() {
		return payment_point;
	}
	public void setPayment_point(int payment_point) {
		this.payment_point = payment_point;
	}


	@Override
	public String toString() {
		return "PaymemtVo [payment_num=" + payment_num + ", project_num=" + project_num + ", reword_num=" + reword_num
				+ ", payment_date=" + payment_date + ", payment_point=" + payment_point + "]";
	}
	

}
