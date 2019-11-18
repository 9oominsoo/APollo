package com.apollo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController{
	
	@RequestMapping("/main")
	public ModelAndView schedule() {
		ModelAndView mav = new ModelAndView("main/Main");
		return mav;
	}
}