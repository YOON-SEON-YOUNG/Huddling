package com.kh.Portfolio_Huddling.maker;

public class TempMakerStoryDto {
	private int temp_story_num;
	private String story_introimg;
	private String story_summary;
	private String story_storyboard;
	public int getTemp_story_num() {
		return temp_story_num;
	}
	public void setTemp_story_num(int temp_story_num) {
		this.temp_story_num = temp_story_num;
	}
	public String getStory_introimg() {
		return story_introimg;
	}
	public void setStory_introimg(String story_introimg) {
		this.story_introimg = story_introimg;
	}
	public String getStory_summary() {
		return story_summary;
	}
	public void setStory_summary(String story_summary) {
		this.story_summary = story_summary;
	}
	public String getStory_storyboard() {
		return story_storyboard;
	}
	public void setStory_storyboard(String story_storyboard) {
		this.story_storyboard = story_storyboard;
	}
	@Override
	public String toString() {
		return "TempMakerStoryDto [temp_story_num=" + temp_story_num + ", story_introimg=" + story_introimg
				+ ", story_summary=" + story_summary + ", story_storyboard=" + story_storyboard + "]";
	}
}
