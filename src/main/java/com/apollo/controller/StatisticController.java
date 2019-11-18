package com.apollo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatisticController {

	@RequestMapping("/statisticPage")
	public String votePage() {
		System.out.println("statistic Page");
		return "poll/Statistic";
	}
}
