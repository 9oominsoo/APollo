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
	
	//모든 메이저 정보 출력 
	public List<VoteVo> AllMajor(){
		List<VoteVo> list = session.selectList("statistic.AllMajor");
		return list;
	}
	
	
	
	//투표율을 위한 메이저 별 투표한 학생 수 
	public int countRate(VoteVo vo) {
		int count = session.selectOne("statistic.countRating", vo);
		return count ;
	}
	
	
	//메이저별 전체 학생 수 
	public int AllStudentREAL(VoteVo vo) {
		int count = session.selectOne("statistic.AllStudentNotNormal", vo);
		return count;
	}
	
	
	//메이저별 휴학생을 제외한 전체 학생 수 
	public int AllStudent(VoteVo vo) {
		int count = session.selectOne("statistic.AllStudent", vo);
		return count;
	}
	
	// 각 후보자들 득표수 
	public List<VoteVo> statisticPercentOfParticular(VoteVo vo){
		List<VoteVo> list = session.selectList("statistic.statisticPercentOfParticular", vo);
		return list;
	}
	
	// 파티 정보 검색 
	public List<VoteVo> searchParty(VoteVo vo){
		List<VoteVo> list = session.selectList("statistic.searchParty", vo);
		return list;
	}
	
	// 파티 상세 정보 검색 
	public List<VoteVo> partyDetail(VoteVo vo){
		List<VoteVo> list = session.selectList("statistic.partyDetail", vo);
		return list;
	}
	
	
}
