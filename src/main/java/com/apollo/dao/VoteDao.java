package com.apollo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apollo.vo.VoteVo;

@Repository
public class VoteDao {

	@Autowired
	private SqlSession session;
	
	
	//<!-- #후보 PARTY 찾기   -->
	public VoteVo getParty(VoteVo vo){
		int majorId = vo.getMajorId();
		
		VoteVo vo2 = session.selectOne("votePage.searchParty", majorId);
		return vo2;
	}
	
	//<!-- #PARTY 상세보기  -->
	// 후보군들 선택 
	public List<VoteVo> partyList(VoteVo vo){
		
		List<VoteVo> list = session.selectList("votePage.partyDetail", vo.getPartyId());
		return list;
	}
	
	//<!-- #투표하기  -->
	// 투표 후 투표 여부 확인 할 수 있게 
	public int voteMan(VoteVo vo) {
		int vote = session.insert("votePage.vote", vo.getStudentId());
		return vote;
	}
	// 선거자 득표 수 올려주기 
	// <!-- #중복투표 방지 트리거 -->

}
