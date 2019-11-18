package com.apollo.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apollo.vo.StudentVo;

@Repository
public class StudentDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int signUp(StudentVo vo) {
		return sqlSession.insert("student.insertStudent", vo);
	}
	
	public StudentVo logIn(Map<String, Object> map) {
		return sqlSession.selectOne("student.selectStudent", map);
	}
}
