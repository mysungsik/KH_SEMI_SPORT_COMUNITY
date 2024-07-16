package com.helpgpt.sports.login.model.vo;

public class UserPolicy {
	private String agreeAddress;
	private String agreeEmail;
	private String agreePhone;
	
	public UserPolicy() {
	}	
	public UserPolicy(String agreeAddress, String agreeEmail, String agreePhone) {
		this.agreeAddress = agreeAddress;
		this.agreeEmail = agreeEmail;
		this.agreePhone = agreePhone;
	}
	
	public String getAgreeAddress() {
		return agreeAddress;
	}
	public void setAgreeAddress(String agreeAddress) {
		this.agreeAddress = agreeAddress;
	}
	public String getAgreeEmail() {
		return agreeEmail;
	}
	public void setAgreeEmail(String agreeEmail) {
		this.agreeEmail = agreeEmail;
	}
	public String getAgreePhone() {
		return agreePhone;
	}
	public void setAgreePhone(String agreePhone) {
		this.agreePhone = agreePhone;
	}
	
	
}


