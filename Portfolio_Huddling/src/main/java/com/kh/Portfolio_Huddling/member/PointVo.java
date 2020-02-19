package com.kh.Portfolio_Huddling.member;

import java.sql.Timestamp;

public class PointVo {
	private int pointcode;
	private String member_id;
	private Timestamp buy_date;
	private int charge_money;
	
	public PointVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PointVo(int pointcode, String member_id, Timestamp buy_date, int charge_money) {
		super();
		this.pointcode = pointcode;
		this.member_id = member_id;
		this.buy_date = buy_date;
		this.charge_money = charge_money;
	}

	public int getPointcode() {
		return pointcode;
	}

	public void setPointcode(int pointcode) {
		this.pointcode = pointcode;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public Timestamp getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(Timestamp buy_date) {
		this.buy_date = buy_date;
	}

	public int getCharge_money() {
		return charge_money;
	}

	public void setCharge_money(int charge_money) {
		this.charge_money = charge_money;
	}

	@Override
	public String toString() {
		return "PointVo [pointcode=" + pointcode + ", member_id=" + member_id + ", buy_date=" + buy_date
				+ ", charge_money=" + charge_money + "]";
	}
	
	

}
