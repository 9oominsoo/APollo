package com.apollo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.apollo.service.StatisticService;
import com.apollo.vo.VoteVo;

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
	
	@ResponseBody
	@RequestMapping("/AllMajor")
	public List<VoteVo> AllMajor(){
		
		return service.AllMajor();
	}
	
	@ResponseBody
	@RequestMapping("/statisticPercent")
	public Map<String, Object> statisticPercent(
									@RequestParam("electionNo") int electionNo,
									@RequestParam("majorId") int majorId) {
		System.out.println("statisticPercent page start...");
		VoteVo vo = new VoteVo();
		vo.setElectionNo(electionNo);
		vo.setMajorId(majorId);
		
		Map<String, Object> map = service.statisticPercent(vo);
		System.out.println("result in controller");
		System.out.println(map.toString());
		return map;
	}
	
	@RequestMapping("/statisticList")
	public String statisticList() {
		System.out.println("statisticList start ...");
		return "";
	}
	
	@ResponseBody
	@RequestMapping("/countRate")
	public Map<String, Object> countRate(
										@RequestParam("electionNo") int electionNo,
										@RequestParam("majorId") int majorId){
		System.out.println("start count Rating");
		VoteVo vo = new VoteVo();
		vo.setMajorId(majorId);
		vo.setElectionNo(electionNo);
		Map<String, Object> map = service.countRate(vo);
		
		return map;
	}
}
