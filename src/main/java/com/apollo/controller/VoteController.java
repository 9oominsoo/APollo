package com.apollo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.apollo.service.VoteService;
import com.apollo.vo.VoteVo;

@Controller
public class VoteController {

	//서비스 
	@Autowired
	private VoteService service;

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

	// 유저 페이지 로드
	@RequestMapping(value = "/{userno}", method = RequestMethod.GET)
	public Map<String, Object> userPage(@PathVariable("userno") int userNo, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// return service.findUserInfo(request, response, userNo);
		return null;
	}

	// 로그인 처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public VoteVo logIn(@RequestBody VoteVo vo, HttpServletResponse response) throws Exception {
		// VoteVo authUser = service.logIn(vo, response);
		// return authUser;
		return null;
	}

	// 후보군 유저 출력
	@RequestMapping(value = "/alluser", method = RequestMethod.GET)
	public List<VoteVo> loadUser() {
		// return service.loadUser();
		return null;
	}
	
	//투표하기
	@RequestMapping(value = "/vote", method = RequestMethod.POST)
	public VoteVo voteUser() {
		return null;
	}
}
