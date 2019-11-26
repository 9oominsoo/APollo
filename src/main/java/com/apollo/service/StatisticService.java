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
	
	public Map<String, Object> statisticPercent(VoteVo vo) {
		
		List<VoteVo> majorList = dao.AllMajor();
		System.out.println(majorList.toString());
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 메이저들 리스트 뽑기 
		for(int majorInt = 0; majorInt < majorList.size() ;majorInt++) {
			VoteVo forMajor = new VoteVo();
			forMajor.setMajorId(majorList.get(majorInt).getMajorId());
			forMajor.setElectionNo(vo.getElectionNo());
			//각 메이저 별 전체 인원 수 
			int All = dao.AllStudent(forMajor) ;
			
			System.out.println(All);
			
			//부분 인원 수
			List<VoteVo> list = dao.searchParty(forMajor);
			
			for(int i = 0 ; i < list.size(); i++) {
				int particular = list.get(i).getVotes();
				System.out.println(list.get(i).getPartyId() +" is "+ particular);
				double statisticPercent = (double)(particular)/(double)(All)*100 ;
				System.out.println(statisticPercent);
				int intStatisticPercent = (int)(statisticPercent);
				list.get(i).setPercent(intStatisticPercent);
				
			}
			String StringData = Integer.toString(forMajor.getMajorId());
			System.out.println(list.toString());
			map.put(StringData , list);
		}
		
		System.out.println(map.toString());
		
		return map; 
	}
	
	public List<VoteVo> statisticList(VoteVo vo){
		
		
		List<VoteVo> list = null; 
		
		return list; 
	}
}
