package com.apollo.service;

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
	
	public Map<VoteVo, Object> statisticPercent(VoteVo vo) {
		
		//전체 인원 수 
		int All = dao.AllStudent(vo) ;
		
		Map<VoteVo, Object> map = null;
		//부분 인원 수
		List<VoteVo> list = dao.statisticPercentOfParticular(vo);
		for(int i = 0 ; i < list.size(); i++) {
			int particular = 0;
			int statisticPercent = (All/particular);
			map.put(list.get(i), statisticPercent);
		}
		
		return map; 
	}
	
	public List<VoteVo> statisticList(VoteVo vo){
		
		
		List<VoteVo> list = null; 
		
		return list; 
	}
}
