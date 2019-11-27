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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.apollo.service.VoteService;
import com.apollo.vo.VoteVo;

@Controller
@RequestMapping("/votePage")
public class VoteController {

	//서비스 
	@Autowired
	private VoteService service;

	@RequestMapping("/main")
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
	
	
	@ResponseBody
	@RequestMapping(value = "/searchParty" , method = RequestMethod.POST)
	public List<VoteVo> searchParty(@RequestParam("majorId") int majorId ){
		System.out.println("search party !");
		VoteVo vo = new VoteVo();
		vo.setMajorId(majorId);
		List<VoteVo> list = service.partyList(vo);
		System.out.println(list.toString());
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "/partyDetailList" , method = RequestMethod.POST)
	public List<VoteVo> partyDetailList(@RequestParam("partyId") int partyId){
		System.out.println("start party detail List");
		VoteVo vo = new VoteVo();
		vo.setPartyId(partyId);
		List<VoteVo> list = service.getParty(vo);
		return list;
	}
	@ResponseBody
	@RequestMapping(value = "/voteMan" , method = RequestMethod.POST)
	public int voteMan(@RequestParam("studentId") int studentId,
						@RequestParam("partyId") int partyId,
						@RequestParam("electionNo") int electionNo ) {
		System.out.println( "vote me !!");
		VoteVo vo = new VoteVo();
		vo.setStudentId(studentId);
		vo.setPartyId(partyId);
		vo.setElectionNo(electionNo);
		
		System.out.println(vo.toString());
		//이거 하기전에 이미 투표했는지 확인 할 수 있도록 만든다 
		
		if(service.voteMan(vo) == 1) {
			return 1;
		}
		//경고창과 함께 메인페이지로 이동 
		return 0;
	}
	
	@ResponseBody
	@RequestMapping("/abstentionButton")
	public int abstentionButton(@RequestParam("studentId") int studentId,
								@RequestParam("electionNo") int electionNo) {
		System.out.println("abstentionButton controller start ");
		VoteVo vo = new VoteVo();
		vo.setStudentId(studentId);
		vo.setElectionNo(electionNo);
		
		return service.abstentionButton(vo);
		
	}
}
