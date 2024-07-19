package com.helpgpt.sports.profile.model.vo;

public class LoginHistory {
	private int historyNo;
	private int userNo;
	private String loginDate;
	private String loginAuto;
	
	public LoginHistory(int historyNo, int userNo, String loginDate, String loginAuto) {
		this.historyNo = historyNo;
		this.userNo = userNo;
		this.loginDate = loginDate;
		this.loginAuto = loginAuto;
	}
	public int getHistoryNo() {
		return historyNo;
	}
	public void setHistoryNo(int historyNo) {
		this.historyNo = historyNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}
	public String getLoginAuto() {
		return loginAuto;
	}
	public void setLoginAuto(String loginAuto) {
		this.loginAuto = loginAuto;
	}
	
	
}


