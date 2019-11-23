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
		return list;
	}
	
	public int voteMan(VoteVo vo) {
		//투표자가 투표 안했을시에 투표하도록 설정 
		if( dao.confirmVote(vo) == 0) {
		//후보자 득표수 올려주기 
		int updateVotes = dao.updateVotes(vo);
		if(updateVotes == 1)
		// vote 에 추가 ~ 
		return dao.voteMan(vo);
		else return 0;
		}
		return 0;
	}
	
}
