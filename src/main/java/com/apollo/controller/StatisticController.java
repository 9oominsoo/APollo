package com.apollo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatisticController {

	@RequestMapping("/staticticPage")
	public String votePage() {
		System.out.println("statictic Page");
		return "poll/statictic";
	}
}
