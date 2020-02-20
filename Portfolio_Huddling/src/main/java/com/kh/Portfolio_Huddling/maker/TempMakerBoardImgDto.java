package com.kh.Portfolio_Huddling.maker;

public class TempMakerBoardImgDto {
	private int temp_imglist_num;
	private int imglist_num;
	private String imglist_name;

	public int getTemp_imglist_num() {
		return temp_imglist_num;
	}

	public void setTemp_imglist_num(int temp_imglist_num) {
		this.temp_imglist_num = temp_imglist_num;
	}

	public int getImglist_num() {
		return imglist_num;
	}

	public void setImglist_num(int imglist_num) {
		this.imglist_num = imglist_num;
	}

	public String getImglist_name() {
		return imglist_name;
	}

	public void setImglist_name(String imglist_name) {
		this.imglist_name = imglist_name;
	}

	@Override
	public String toString() {
		return "TempMakerBoardImgDto [temp_imglist_num=" + temp_imglist_num + ", imglist_num=" + imglist_num
				+ ", imglist_name=" + imglist_name + "]";
	}
	
}
