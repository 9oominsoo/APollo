package com.apollo.dao;

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
}
