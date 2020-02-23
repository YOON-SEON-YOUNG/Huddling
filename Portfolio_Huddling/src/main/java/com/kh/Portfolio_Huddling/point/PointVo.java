package com.kh.Portfolio_Huddling.point;

import java.sql.Timestamp;

public class PointVo {	
	private int point_num;
	private String member_id;
	private int member_point;
	private Timestamp point_date;
	private String point_receipt;
	public PointVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PointVo(int point_num, String member_id, int member_point, Timestamp point_date, String point_receipt) {
		super();
		this.point_num = point_num;
		this.member_id = member_id;
		this.member_point = member_point;
		this.point_date = point_date;
		this.point_receipt = point_receipt;
	}
	public int getPoint_num() {
		return point_num;
	}
	public void setPoint_num(int point_num) {
		this.point_num = point_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	public Timestamp getPoint_date() {
		return point_date;
	}
	public void setPoint_date(Timestamp point_date) {
		this.point_date = point_date;
	}
	public String getPoint_receipt() {
		return point_receipt;
	}
	public void setPoint_receipt(String point_receipt) {
		this.point_receipt = point_receipt;
	}
	@Override
	public String toString() {
		return "PointVo [point_num=" + point_num + ", member_id=" + member_id + ", member_point=" + member_point
				+ ", point_date=" + point_date + ", point_receipt=" + point_receipt + "]";
	}
	
	

}
