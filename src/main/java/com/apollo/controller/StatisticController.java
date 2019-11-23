package com.apollo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.apollo.service.StatisticService;

@Controller
public class StatisticController {

	@Autowired
	private StatisticService service ; 
	
	@RequestMapping("/statisticPage")
	public String votePage() {
		System.out.println("statistic Page");
		return "poll/Statistic";
	}
}
