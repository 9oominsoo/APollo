package com.apollo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/DataBoardPage")
public class DataBoardController {

	@RequestMapping("/main")
	public String DataBoardMainPage() {
		System.out.println("sysout main page");
		return "databoard/DataBoard";
	}
	
	// 게시글 리스트 
	
	// 리스트중 하나 
	
	// 댓글 달기 
	
	// 댓글 삭제 
	
	// 게시글 삭제 
	
	// 게시글 등록 
	

}
