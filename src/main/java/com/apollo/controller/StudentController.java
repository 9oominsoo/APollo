package com.apollo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.apollo.service.StudentService;

@RestController
@RequestMapping("/user")
public class StudentController {
	
	@Autowired
	private StudentService service;

	@RequestMapping(method=RequestMethod.POST)
	   public ModelAndView signUp(@RequestParam("studentNumber") int studentId, @RequestParam("Name") String studentName,
			   @RequestParam("Major") int majorId, @RequestParam("Email") String email, @RequestParam("Password") String password) {
	      int result = service.signUp(studentId, studentName, majorId, email, password);
	      ModelAndView mav = new ModelAndView("main/Main");
	      return mav;
	   }

}
