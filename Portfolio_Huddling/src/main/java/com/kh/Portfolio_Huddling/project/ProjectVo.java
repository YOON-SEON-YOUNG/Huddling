package com.kh.Portfolio_Huddling.project;

public class ProjectVo {
	private int project_num;
	private int project_app;

	public ProjectVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProjectVo(int project_num, int project_app) {
		super();
		this.project_num = project_num;
		this.project_app = project_app;
	}

	public int getProject_num() {
		return project_num;
	}

	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}

	public int getProject_app() {
		return project_app;
	}

	public void setProject_app(int project_app) {
		this.project_app = project_app;
	}

	@Override
	public String toString() {
		return "ProjectVo [project_num=" + project_num + ", project_app=" + project_app + "]";
	}

}
