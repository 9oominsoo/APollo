package com.apollo.vo;

import java.util.Date;

public class VoteVo {

	public VoteVo() {
	};
	
	

	
	public VoteVo(int percent, int studentId, int electionNo, Date voteDate, String electionName, Date startDate,
			Date endDate, String status, String type, String roll, int repimo, int partyId, int majorId,
			String partyName, int votes, String elected, String collegeName, String collegeType, String collegeLine,
			String majorName, int enrollMent) {
		super();
		this.percent = percent;
		this.studentId = studentId;
		this.electionNo = electionNo;
		this.voteDate = voteDate;
		this.electionName = electionName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.status = status;
		this.type = type;
		this.roll = roll;
		this.repimo = repimo;
		this.partyId = partyId;
		this.majorId = majorId;
		this.partyName = partyName;
		this.votes = votes;
		this.elected = elected;
		this.collegeName = collegeName;
		this.collegeType = collegeType;
		this.collegeLine = collegeLine;
		this.majorName = majorName;
		this.enrollMent = enrollMent;
	}



	private int percent;
	
	// APOLLO.VOTE
	private int studentId;
	private int electionNo;
	private Date voteDate;

	// APOLLO.ELECTION
	private String electionName;
	private Date startDate;
	private Date endDate;
	private String status;
	private String type;

	// APOLLO.CANDIDATE
	private String roll;
	private int repimo;
	private int partyId;

	// APOLLO.PARTY
	private int majorId;
	private String partyName;
	private int votes;
	private String elected;

	// APOLLO.MAJOR
	private String collegeName;
	private String collegeType;
	private String collegeLine;
	private String majorName;
	private int enrollMent;

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public int getElectionNo() {
		return electionNo;
	}

	public void setElectionNo(int electionNo) {
		this.electionNo = electionNo;
	}

	public Date getVoteDate() {
		return voteDate;
	}

	public void setVoteDate(Date voteDate) {
		this.voteDate = voteDate;
	}

	public String getElectionName() {
		return electionName;
	}

	public void setElectionName(String electionName) {
		this.electionName = electionName;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRoll() {
		return roll;
	}

	public void setRoll(String roll) {
		this.roll = roll;
	}

	public int getRepimo() {
		return repimo;
	}

	public void setRepimo(int repimo) {
		this.repimo = repimo;
	}

	public int getPartyId() {
		return partyId;
	}

	public void setPartyId(int partyId) {
		this.partyId = partyId;
	}

	public int getMajorId() {
		return majorId;
	}

	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}

	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public int getVotes() {
		return votes;
	}

	public void setVotes(int votes) {
		this.votes = votes;
	}

	public String getElected() {
		return elected;
	}

	public void setElected(String elected) {
		this.elected = elected;
	}

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public String getCollegeType() {
		return collegeType;
	}

	public void setCollegeType(String collegeType) {
		this.collegeType = collegeType;
	}

	public String getCollegeLine() {
		return collegeLine;
	}

	public void setCollegeLine(String collegeLine) {
		this.collegeLine = collegeLine;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public int getEnrollMent() {
		return enrollMent;
	}

	public void setEnrollMent(int enrollMent) {
		this.enrollMent = enrollMent;
	}



	public int getPercent() {
		return percent;
	}


	public void setPercent(int percent) {
		this.percent = percent;
	}



	@Override
	public String toString() {
		return "VoteVo [percent=" + percent + ", studentId=" + studentId + ", electionNo=" + electionNo + ", voteDate="
				+ voteDate + ", electionName=" + electionName + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", status=" + status + ", type=" + type + ", roll=" + roll + ", repimo=" + repimo + ", partyId="
				+ partyId + ", majorId=" + majorId + ", partyName=" + partyName + ", votes=" + votes + ", elected="
				+ elected + ", collegeName=" + collegeName + ", collegeType=" + collegeType + ", collegeLine="
				+ collegeLine + ", majorName=" + majorName + ", enrollMent=" + enrollMent + "]";
	}

}
