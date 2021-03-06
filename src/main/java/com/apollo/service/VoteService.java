package com.apollo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apollo.dao.VoteDao;
import com.apollo.vo.VoteVo;

@Service
public class VoteService {

	@Autowired
	private VoteDao dao;
	
	//파티안에 디테일 리스트 
	public List<VoteVo> getParty(VoteVo vo) {
		
		List<VoteVo> list = dao.partyDetailList(vo);
		
		return list;
		
	}
	
	public List<VoteVo> partyList(VoteVo vo){
		
		List<VoteVo> list = dao.getParty(vo);
		System.out.println(list.toString());
		return list;
	}
	
	public int voteMan(VoteVo vo) {
		//투표자가 투표 안했는지 확인 설정 
		
		if( dao.confirmVote(vo) == 0) {
		//후보자 득표수 올려주기 
		System.out.println("he is not already vote");
		int updateVotes = dao.updateVotes(vo);
		
		System.out.println(updateVotes+" is updateVotes");
		if(updateVotes == 1)
		// vote 에 추가 ~ 
		
		return dao.voteMan(vo);
		else return 0;
		}
		return 0;
	}
	
	public int abstentionButton(VoteVo vo) {
		if( dao.confirmVote(vo) == 0) {
		
		return dao.voteMan(vo);
		}
		return 0;
	}
}
