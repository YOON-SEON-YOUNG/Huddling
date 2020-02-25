package com.kh.Portfolio_Huddling.member;

import java.sql.Timestamp;

public class PointVo {	
	private int point_num;        	// 포인트 구매 번호
	private String member_id;		// 회원 아이디
	private int member_point;		// 구매 포인트
	private String point_content;   // 포인트 내용
	private Timestamp point_date;	// 구매일자 

	public PointVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PointVo(int point_num, String member_id, int member_point, Timestamp point_date) {
		super();
		this.point_num = point_num;
		this.member_id = member_id;
		this.member_point = member_point;
		this.point_date = point_date;
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

	public String getPoint_content() {
		return point_content;
	}

	public void setPoint_content(String point_content) {
		this.point_content = point_content;
	}

	public Timestamp getPoint_date() {
		return point_date;
	}

	public void setPoint_date(Timestamp point_date) {
		this.point_date = point_date;
	}

	@Override
	public String toString() {
		return "PointVo [point_num=" + point_num + ", member_id=" + member_id + ", member_point=" + member_point
				+ ", point_content=" + point_content + ", point_date=" + point_date + "]";
	}

	

	
	
	
	
	
}
