package com.apollo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apollo.vo.VoteVo;

@Repository
public class StatisticDao {

	@Autowired
	private SqlSession session;
	
	public int AllStudent(VoteVo vo) {
		int count = session.selectOne("statistic.AllStudent", vo);
		return count;
	}
	
	public List<VoteVo> statisticPercentOfParticular(VoteVo vo){
		List<VoteVo> list = session.selectList("statistic.statisticPercentOfParticular", vo);
		return list;
	}
	
	public List<VoteVo> searchParty(VoteVo vo){
		List<VoteVo> list = session.selectList("statistic.searchParty", vo);
		return list;
	}
	
	public List<VoteVo> partyDetail(VoteVo vo){
		List<VoteVo> list = session.selectList("statistic.partyDetail", vo);
		return list;
	}
}
