package com.kh.Portfolio_Huddling.maker;

public class TempMakerRequirDto {
	private int    temp_requir_num;
	private String requir_q1_check;
	private String requir_q1_desc;
	private String requir_q2_desc;
	private String requir_q3_desc;
	private String requir_q4_check;
	public int getTemp_requir_num() {
		return temp_requir_num;
	}
	public void setTemp_requir_num(int temp_requir_num) {
		this.temp_requir_num = temp_requir_num;
	}
	public String getRequir_q1_check() {
		return requir_q1_check;
	}
	public void setRequir_q1_check(String requir_q1_check) {
		this.requir_q1_check = requir_q1_check;
	}
	public String getRequir_q1_desc() {
		return requir_q1_desc;
	}
	public void setRequir_q1_desc(String requir_q1_desc) {
		this.requir_q1_desc = requir_q1_desc;
	}
	public String getRequir_q2_desc() {
		return requir_q2_desc;
	}
	public void setRequir_q2_desc(String requir_q2_desc) {
		this.requir_q2_desc = requir_q2_desc;
	}
	public String getRequir_q3_desc() {
		return requir_q3_desc;
	}
	public void setRequir_q3_desc(String requir_q3_desc) {
		this.requir_q3_desc = requir_q3_desc;
	}
	public String getRequir_q4_check() {
		return requir_q4_check;
	}
	public void setRequir_q4_check(String requir_q4_check) {
		this.requir_q4_check = requir_q4_check;
	}
	@Override
	public String toString() {
		return "TempMakerRequirDto [temp_requir_num=" + temp_requir_num + ", requir_q1_check=" + requir_q1_check
				+ ", requir_q1_desc=" + requir_q1_desc + ", requir_q2_desc=" + requir_q2_desc + ", requir_q3_desc="
				+ requir_q3_desc + ", requir_q4_check=" + requir_q4_check + "]";
	}
	
}
