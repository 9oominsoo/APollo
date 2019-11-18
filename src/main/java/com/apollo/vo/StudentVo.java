package com.apollo.vo;

public class StudentVo {
	
	//Table Attribute
	private int studentId;
	private String studentName;
	private int majorId;
	private String status;
	private String email;
	private String password;
	private String authToken;
	
	public StudentVo() {
	
	}

	public StudentVo(int studentId, String studentName, int majorId, String email, String password) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.majorId = majorId;
		this.email = email;
		this.password = password;
	}

	public StudentVo(int studentId, String studentName, int majorId, String status, String email, String password,
			String authToken) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.majorId = majorId;
		this.status = status;
		this.email = email;
		this.password = password;
		this.authToken = authToken;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public int getMajorId() {
		return majorId;
	}

	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAuthToken() {
		return authToken;
	}

	public void setAuthToken(String authToken) {
		this.authToken = authToken;
	}

	@Override
	public String toString() {
		return "StudentVo [studentId=" + studentId + ", studentName=" + studentName + ", majorId=" + majorId
				+ ", status=" + status + ", email=" + email + ", password=" + password + ", authToken=" + authToken
				+ "]";
	}
	
	
}
