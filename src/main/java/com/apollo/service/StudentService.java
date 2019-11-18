package com.apollo.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apollo.dao.StudentDao;
import com.apollo.vo.StudentVo;

@Service
public class StudentService {
	
	@Autowired
	private StudentDao dao;
	
	public int signUp(int studentId, String studentName, int majorId, String email, String password) {
		StudentVo vo = new StudentVo(studentId, studentName, majorId, email, password);
		return dao.signUp(vo);
	}	
	
	public StudentVo logIn(String email, String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", email);
		map.put("password", password);
		return dao.logIn(map);
	}
}
