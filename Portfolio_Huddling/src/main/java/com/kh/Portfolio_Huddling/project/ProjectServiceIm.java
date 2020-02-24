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

	@Override
	public List<ProjectVo> selectIntroList() throws Exception {
		// TODO Auto-generated method stub
		return projectDao.selectIntroList();
	}

	@Override
	public List<ProjectVo> category(int temp_basic_num) throws Exception {
		System.out.println("ProejctService :" +temp_basic_num );
		return projectDao.category(temp_basic_num);
	}

}
