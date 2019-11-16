package com.apollo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testPage {

	@RequestMapping("/doTest")
	public String test() {
		System.out.println("test page");
		return "poll/test1";
	}
}
