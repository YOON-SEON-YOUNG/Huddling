package com.kh.Portfolio_Huddling.project;

import java.util.Arrays;

public class ProjectVo {
	 private int    project_num;  
	 private String project_category;
	 private String project_image; 
	 private String project_story; 
	 private String project_name; 
	 private int    project_app;
	public ProjectVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectVo(int project_num, String project_category, String project_image, String project_story,
			String project_name, int project_app) {
		super();
		this.project_num = project_num;
		this.project_category = project_category;
		this.project_image = project_image;
		this.project_story = project_story;
		this.project_name = project_name;
		this.project_app = project_app;
	}
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
	public int getProject_app() {
		return project_app;
	}
	public void setProject_app(int project_app) {
		this.project_app = project_app;
	}
	@Override
	public String toString() {
		return "ProjectDto [project_num=" + project_num + ", project_category=" + project_category + ", project_image="
				+ project_image + ", project_story=" + project_story + ", project_name=" + project_name
				+ ", project_app=" + project_app + "]";
	}
	
	}

	
