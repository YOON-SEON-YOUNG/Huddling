package com.kh.Portfolio_Huddling.project;

import java.util.List;

public interface ProjectDao {
	public List<ProjectVo> ProjectList(ProjectVo projectVo) throws Exception;
	public void projectApproval(ProjectVo projectVo) throws Exception;
	//신규보기
	public List<ProjectVo> selectIntroList()throws Exception;
	//푸드 보기
	public List<ProjectVo> category(ProjectVo projectVo)throws Exception;
}
