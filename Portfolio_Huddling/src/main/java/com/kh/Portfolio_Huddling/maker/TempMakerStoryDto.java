package com.kh.Portfolio_Huddling.maker;

public class TempMakerStoryDto {
	private int temp_story_num;
	private String story_introImg;
	private String story_summary;
	private String story_storyBoard;
	
	public int getTemp_story_num() {
		return temp_story_num;
	}
	public void setTemp_story_num(int temp_story_num) {
		this.temp_story_num = temp_story_num;
	}
	public String getStory_introImg() {
		return story_introImg;
	}
	public void setStory_introImg(String story_introImg) {
		this.story_introImg = story_introImg;
	}
	public String getStory_summary() {
		return story_summary;
	}
	public void setStory_summary(String story_summary) {
		this.story_summary = story_summary;
	}
	public String getStory_storyBoard() {
		return story_storyBoard;
	}
	public void setStory_storyBoard(String story_storyBoard) {
		this.story_storyBoard = story_storyBoard;
	}
	@Override
	public String toString() {
		return "TempMakerStoryDto [temp_story_num=" + temp_story_num + ", story_introImg=" + story_introImg
				+ ", story_summary=" + story_summary + ", story_storyBoard=" + story_storyBoard + "]";
	}
}
