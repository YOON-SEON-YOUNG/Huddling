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
		return list;
	}

	@Override
	public List<ProjectVo> category(ProjectVo projectVo) throws Exception {
		List<ProjectVo> list = sqlSession.selectList(NAMESPACE + ".selectCategory",projectVo );
		System.out.println("다오 리턴" + list);
		return list;
	}

	@Override
	public void deadline(String basic_enddate) throws Exception {
		sqlSession.selectOne(NAMESPACE + ".deadline",basic_enddate);
	}

	@Override
	public List<ProjectVo> selectIntroSearch(ProjectVo projectVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectIntroSearch", projectVo);
	}

	@Override
	public List<ProjectVo> selectIntroSearchCategory(ProjectVo projectVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectIntroSearchCategory", projectVo);
	}
}
