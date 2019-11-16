package com.apollo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VoteController {

	@RequestMapping("/votePage")
	public String votePage() {
		System.out.println("vote Page");
		return "poll/Vote";
	}
	
	@RequestMapping("/voted")
	public String voted() {
		System.out.println("voted");
		return "poll/test1";
	}
}
