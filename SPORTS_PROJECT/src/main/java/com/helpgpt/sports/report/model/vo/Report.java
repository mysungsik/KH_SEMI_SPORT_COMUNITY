package com.helpgpt.sports.report.model.vo;

public class Report {
	private int reportNo;
	private int userNo;
	private String userName;
	private String userId;
	private int reportTypeNo;
	private String reportTypeName;
	private int reportTargetNo;
	private String reportTargetTitle;
	private String reportTargetContent;
	private int violationTypeNo;
	private String violationTypeName;
	private String reportContent;
	private String reportDt;
	private String reportStatus;
	
	public Report() {}

	public Report(int reportNo, int userNo, String userName, String userId, int reportTypeNo, String reportTypeName,
			int reportTargetNo, String reportTargetTitle, String reportTargetContent, int violationTypeNo,
			String violationTypeName, String reportContent, String reportDt, String reportStatus) {
		super();
		this.reportNo = reportNo;
		this.userNo = userNo;
		this.userName = userName;
		this.userId = userId;
		this.reportTypeNo = reportTypeNo;
		this.reportTypeName = reportTypeName;
		this.reportTargetNo = reportTargetNo;
		this.reportTargetTitle = reportTargetTitle;
		this.reportTargetContent = reportTargetContent;
		this.violationTypeNo = violationTypeNo;
		this.violationTypeName = violationTypeName;
		this.reportContent = reportContent;
		this.reportDt = reportDt;
		this.reportStatus = reportStatus;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getReportTypeNo() {
		return reportTypeNo;
	}

	public void setReportTypeNo(int reportTypeNo) {
		this.reportTypeNo = reportTypeNo;
	}

	public String getReportTypeName() {
		return reportTypeName;
	}

	public void setReportTypeName(String reportTypeName) {
		this.reportTypeName = reportTypeName;
	}

	public int getReportTargetNo() {
		return reportTargetNo;
	}

	public void setReportTargetNo(int reportTargetNo) {
		this.reportTargetNo = reportTargetNo;
	}

	public String getReportTargetTitle() {
		return reportTargetTitle;
	}

	public void setReportTargetTitle(String reportTargetTitle) {
		this.reportTargetTitle = reportTargetTitle;
	}

	public String getReportTargetContent() {
		return reportTargetContent;
	}

	public void setReportTargetContent(String reportTargetContent) {
		this.reportTargetContent = reportTargetContent;
	}

	public int getViolationTypeNo() {
		return violationTypeNo;
	}

	public void setViolationTypeNo(int violationTypeNo) {
		this.violationTypeNo = violationTypeNo;
	}

	public String getViolationTypeName() {
		return violationTypeName;
	}

	public void setViolationTypeName(String violationTypeName) {
		this.violationTypeName = violationTypeName;
	}

	public String getReportContent() {
		return reportContent;
	}

	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	public String getReportDt() {
		return reportDt;
	}

	public void setReportDt(String reportDt) {
		this.reportDt = reportDt;
	}

	public String getReportStatus() {
		return reportStatus;
	}

	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}
	
	
}
