package com.helpgpt.sports.like.model.vo;

public class Like {
	private int userNo;
	private String userName;
	private int likeTypeNo;
	private String likeTypeName;
	private int likeTargetNo;
	
	public Like() {}
	public Like(int userNo, String userName, int likeTypeNo, String likeTypeName, int likeTargetNo) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.likeTypeNo = likeTypeNo;
		this.likeTypeName = likeTypeName;
		this.likeTargetNo = likeTargetNo;
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
	public int getLikeTypeNo() {
		return likeTypeNo;
	}
	public void setLikeTypeNo(int likeTypeNo) {
		this.likeTypeNo = likeTypeNo;
	}
	public String getLikeTypeName() {
		return likeTypeName;
	}
	public void setLikeTypeName(String likeTypeName) {
		this.likeTypeName = likeTypeName;
	}
	public int getLikeTargetNo() {
		return likeTargetNo;
	}
	public void setLikeTargetNo(int likeTargetNo) {
		this.likeTargetNo = likeTargetNo;
	}

	
	
}
