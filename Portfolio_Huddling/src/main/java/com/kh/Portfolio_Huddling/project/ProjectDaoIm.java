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
	//신규 리스트 보이기
	@Override
	public List<ProjectVo> selectIntroList() throws Exception {
		List<ProjectVo> list = sqlSession.selectList(NAMESPACE +".selectIntroList");
		System.out.println("ProjectDaoIm, selectIntroList, list:" + list);
		return list;
	}

	@Override
	public List<ProjectVo> category(int temp_basic_num) throws Exception {
		System.out.println("projectDao :"+ temp_basic_num);
		return sqlSession.selectList(NAMESPACE + ".selectCategory",temp_basic_num);
	}
	

}
