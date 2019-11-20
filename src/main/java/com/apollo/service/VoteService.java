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
	
	public VoteVo getParty(VoteVo vo) {
		VoteVo vo2 = dao.getParty(vo);
		return vo2;
	}
	
	public List<VoteVo> partyList(VoteVo vo){
		
		List<VoteVo> list = dao.partyList(vo);
		return list;
	}
	
	public int voteMan(VoteVo vo) {
		
		return dao.voteMan(vo);
	}
	
}
