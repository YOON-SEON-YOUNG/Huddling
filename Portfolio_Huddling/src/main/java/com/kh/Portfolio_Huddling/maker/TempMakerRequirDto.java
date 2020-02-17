package com.kh.Portfolio_Huddling.maker;

public class TempMakerRequirDto {
	private int temp_requir_num;
	private String requir_q1;
	private String requir_q2;
	private String requir_q3;
	private String requir_q4;
	public int getTemp_requir_num() {
		return temp_requir_num;
	}
	public void setTemp_requir_num(int temp_requir_num) {
		this.temp_requir_num = temp_requir_num;
	}
	public String getRequir_q1() {
		return requir_q1;
	}
	public void setRequir_q1(String requir_q1) {
		this.requir_q1 = requir_q1;
	}
	public String getRequir_q2() {
		return requir_q2;
	}
	public void setRequir_q2(String requir_q2) {
		this.requir_q2 = requir_q2;
	}
	public String getRequir_q3() {
		return requir_q3;
	}
	public void setRequir_q3(String requir_q3) {
		this.requir_q3 = requir_q3;
	}
	public String getRequir_q4() {
		return requir_q4;
	}
	public void setRequir_q4(String requir_q4) {
		this.requir_q4 = requir_q4;
	}
	@Override
	public String toString() {
		return "TempMakerRequirDto [temp_requir_num=" + temp_requir_num + ", requir_q1=" + requir_q1 + ", requir_q2="
				+ requir_q2 + ", requir_q3=" + requir_q3 + ", requir_q4=" + requir_q4 + "]";
	}
}
