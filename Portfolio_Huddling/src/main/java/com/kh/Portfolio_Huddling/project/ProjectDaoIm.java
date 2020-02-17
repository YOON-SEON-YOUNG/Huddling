package com.kh.Portfolio_Huddling.project;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectDaoIm implements ProjectDao {

	@Inject
	private SqlSession sqlSession;
	
	private static String NAMESPACE = "com.kh.mappers.projectMapper";

	@Override
	public List<ProjectVo> ProjectList(ProjectVo projectVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectProjectList", projectVo);
	}

	@Override
	public void projectApproval(ProjectVo projectVo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE + ".updateProjectApp", projectVo);
	}
	

}
