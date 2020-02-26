package com.kh.Portfolio_Huddling.project;

import java.util.List;

public interface ProjectDao {
	public List<ProjectVo> ProjectList(ProjectVo projectVo) throws Exception;
	public void projectApproval(ProjectVo projectVo) throws Exception;
	//신규보기
	public List<ProjectVo> selectIntroList()throws Exception;
	//푸드 보기
	public List<ProjectVo> category(ProjectVo projectVo)throws Exception;
	//마감순
	public void deadline(String basic_enddate)throws Exception;
	// 전체 검색
	public List<ProjectVo> selectIntroSearch(ProjectVo projectVo) throws Exception;
	// 카테고리별 검색
	public List<ProjectVo> selectIntroSearchCategory(ProjectVo projectVo) throws Exception;
}
