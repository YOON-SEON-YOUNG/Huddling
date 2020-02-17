package com.kh.Portfolio_Huddling.project;

import java.util.List;



public interface ProjectService {
	public List<ProjectVo> ProjectList(ProjectVo projectVo) throws Exception;
	public void projectApproval(ProjectVo projectVo) throws Exception;
}
