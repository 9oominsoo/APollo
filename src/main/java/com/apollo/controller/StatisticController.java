package com.apollo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.apollo.service.StatisticService;

@Controller
@RequestMapping("/statisticPage")
public class StatisticController {

	@Autowired
	private StatisticService service ; 
	
	@RequestMapping("/main")
	public String votePage() {
		System.out.println("statistic Page");
		return "poll/Statistic";
	}
	
	
	@RequestMapping("/statisticPercent")
	public String statisticPercent() {
		System.out.println("statisticPercent page start...");
		return "";
	}
	
	@RequestMapping("/statisticList")
	public String statisticList() {
		System.out.println("statisticList start ...");
		return "";
	}
}
