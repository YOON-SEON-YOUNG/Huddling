package com.kh.Portfolio_Huddling.project;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class ProjectServiceIm implements ProjectService {
	
	@Inject
	private ProjectDao projectDao;

	@Override
	public List<ProjectVo> ProjectList(ProjectVo projectVo) throws Exception {
		// TODO Auto-generated method stub
		return projectDao.ProjectList(projectVo);
	}

	@Override
	public void projectApproval(ProjectVo projectVo) throws Exception {
		// TODO Auto-generated method stub
		projectDao.projectApproval(projectVo);
	}

}
