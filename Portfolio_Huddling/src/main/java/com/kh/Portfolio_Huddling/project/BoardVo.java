package com.kh.Portfolio_Huddling.project;

public class BoardVo {
	private int project_num;
	private String project_category;
	private String project_image;
	private String project_story;
	private String project_name;
	private String project_app;
	private String project_rating;
	private String story_introimg;
	private String story_summary;
	private String story_storyboard;
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public String getProject_category() {
		return project_category;
	}
	public void setProject_category(String project_category) {
		this.project_category = project_category;
	}
	public String getProject_image() {
		return project_image;
	}
	public void setProject_image(String project_image) {
		this.project_image = project_image;
	}
	public String getProject_story() {
		return project_story;
	}
	public void setProject_story(String project_story) {
		this.project_story = project_story;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_app() {
		return project_app;
	}
	public void setProject_app(String project_app) {
		this.project_app = project_app;
	}
	public String getProject_rating() {
		return project_rating;
	}
	public void setProject_rating(String project_rating) {
		this.project_rating = project_rating;
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
		return "BoardVo [project_num=" + project_num + ", project_category=" + project_category + ", project_image="
				+ project_image + ", project_story=" + project_story + ", project_name=" + project_name
				+ ", project_app=" + project_app + ", project_rating=" + project_rating + ", story_introimg="
				+ story_introimg + ", story_summary=" + story_summary + ", story_storyboard=" + story_storyboard + "]";
	}
}
