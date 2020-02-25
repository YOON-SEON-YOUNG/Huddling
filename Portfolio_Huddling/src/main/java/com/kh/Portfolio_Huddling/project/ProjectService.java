package com.kh.Portfolio_Huddling.project;

import java.util.List;



public interface ProjectService {
	public List<ProjectVo> ProjectList(ProjectVo projectVo) throws Exception;
	public void projectApproval(ProjectVo projectVo) throws Exception;
	//신규순 보기
	public List<ProjectVo> selectIntroList()throws Exception;
	//카테고리별보기 
	public List<ProjectVo> category(ProjectVo projectVo)throws Exception;
	//마감순으로 보기
	public void deadline(String basic_enddate)throws Exception;
}
