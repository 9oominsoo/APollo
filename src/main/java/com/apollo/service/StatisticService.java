package com.apollo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apollo.dao.StatisticDao;
import com.apollo.vo.VoteVo;

@Service
public class StatisticService {

	@Autowired
	private StatisticDao dao;
	
	public List<VoteVo> statisticPercent(VoteVo vo) {
		
		List<VoteVo> majorList = dao.AllMajor();
		System.out.println(majorList.toString());
		
		
			int All = dao.AllStudent(vo) ;
			
			//부분 인원 수
			List<VoteVo> list = dao.searchParty(vo);
			
			for(int i = 0 ; i < list.size(); i++) {
				int particular = list.get(i).getVotes();
				System.out.println(list.get(i).getPartyId() +" is "+ particular);
				double statisticPercent = (double)(particular)/(double)(All)*100 ;
				System.out.println(statisticPercent);
				int intStatisticPercent = (int)(statisticPercent);
				list.get(i).setPercent(intStatisticPercent);
				
			}
			
			System.out.println(list.toString());
		
		
		return list; 
	}
	
	public List<VoteVo> majorList(VoteVo vo){
		
		List<VoteVo> majorList = dao.AllMajor();
		return majorList;
	}
	
	public Map<String, Object> countRate(VoteVo vo) {
		int AllStu = dao.AllStudent(vo);
		int studentNotNorMal = dao.AllStudentREAL(vo) - AllStu;
		int count = dao.countRate(vo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("allStudentOfMajor", AllStu);
		map.put("countRate", count);
		map.put("studentNotNorMal", studentNotNorMal);
		
		return map;
	}
	
	public List<VoteVo> statisticList(VoteVo vo){
		
		
		List<VoteVo> list = null; 
		
		return list; 
	}
	
	public List<VoteVo> AllMajor(){
		List<VoteVo> list = dao.AllMajor();
		return list;
	}
}
