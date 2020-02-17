package com.kh.Portfolio_Huddling.maker;

public class TempMakerBasicDto {
	private int temp_basic_num;
	private String basic_projectName;
	private String basic_amount;
	private String basic_representImg;
	private String basic_category;
	private String basic_endDate;
	private String basic_searchTag;
	public int getTemp_basic_num() {
		return temp_basic_num;
	}
	public void setTemp_basic_num(int temp_basic_num) {
		this.temp_basic_num = temp_basic_num;
	}
	public String getBasic_projectName() {
		return basic_projectName;
	}
	public void setBasic_projectName(String basic_projectName) {
		this.basic_projectName = basic_projectName;
	}
	public String getBasic_amount() {
		return basic_amount;
	}
	public void setBasic_amount(String basic_amount) {
		this.basic_amount = basic_amount;
	}
	public String getBasic_representImg() {
		return basic_representImg;
	}
	public void setBasic_representImg(String basic_representImg) {
		this.basic_representImg = basic_representImg;
	}
	public String getBasic_category() {
		return basic_category;
	}
	public void setBasic_category(String basic_category) {
		this.basic_category = basic_category;
	}
	public String getBasic_endDate() {
		return basic_endDate;
	}
	public void setBasic_endDate(String basic_endDate) {
		this.basic_endDate = basic_endDate;
	}
	public String getBasic_searchTag() {
		return basic_searchTag;
	}
	public void setBasic_searchTag(String basic_searchTag) {
		this.basic_searchTag = basic_searchTag;
	}
	@Override
	public String toString() {
		return "TempMakerBasicDto [temp_basic_num=" + temp_basic_num + ", basic_projectName=" + basic_projectName
				+ ", basic_amount=" + basic_amount + ", basic_representImg=" + basic_representImg + ", basic_category="
				+ basic_category + ", basic_endDate=" + basic_endDate + ", basic_searchTag=" + basic_searchTag + "]";
	}
	
}
