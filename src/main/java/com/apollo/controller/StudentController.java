package com.apollo.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.apollo.service.StudentService;
import com.apollo.vo.StudentVo;

@RestController
@RequestMapping("/user")
public class StudentController {
	
	@Autowired
	private StudentService service;

	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView signUp(HttpSession session, @RequestParam("studentNumber") int studentId, @RequestParam("Name") String studentName,
			   @RequestParam("Major") int majorId, @RequestParam("Email") String email, @RequestParam("Password") String password) {
	   int result = service.signUp(studentId, studentName, majorId, email, password);
	   ModelAndView mav = new ModelAndView("redirect:/main");
	   return mav;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView logIn(HttpSession session, @RequestParam("email") String email, @RequestParam("password") String password) {
		StudentVo authUser = service.logIn(email, password);	
		ModelAndView mav = new ModelAndView("redirect:/main");

		if(authUser == null) {
			return mav;
		}else {
			session.setAttribute("authUser", authUser);
			return mav;
		}
	}

}
