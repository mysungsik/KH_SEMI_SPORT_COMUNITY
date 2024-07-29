package com.helpgpt.sports.reply.model.vo;

public class Reply {
	private int replyNo;
	private int userNo;
	private String userName;
	private String userProfileImg;
	private int replyTypeNo;
	private String replyTypeName;
	private int replyTargetNo;
	private String replyTargetTitle;
	private String replyDt;
	private String replyContent;
	private String replyStatus;
	
	public Reply() {}
	public Reply(int replyNo, int userNo, String userName, String userProfileImg, int replyTypeNo, String replyTypeName, int replyTargetNo,
			String replyDt, String replyContent, String replyStatus) {
		this.replyNo = replyNo;
		this.userNo = userNo;
		this.userName = userName;
		this.userProfileImg = userProfileImg;
		this.replyTypeNo = replyTypeNo;
		this.replyTypeName = replyTypeName;
		this.replyTargetNo = replyTargetNo;
		this.replyDt = replyDt;
		this.replyContent = replyContent;
		this.replyStatus = replyStatus;
	}
	
	// 타겟의 타이틀 포함
	public Reply(int replyNo, int userNo, String userName, String userProfileImg, int replyTypeNo, String replyTargetTitle,String replyTypeName, int replyTargetNo,
			String replyDt, String replyContent, String replyStatus) {
		this.replyNo = replyNo;
		this.userNo = userNo;
		this.userName = userName;
		this.userProfileImg = userProfileImg;
		this.replyTypeNo = replyTypeNo;
		this.replyTargetTitle = replyTargetTitle;
		this.replyTypeName = replyTypeName;
		this.replyTargetNo = replyTargetNo;
		this.replyDt = replyDt;
		this.replyContent = replyContent;
		this.replyStatus = replyStatus;
	}


	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
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
	public String getUserProfileImg() {
		return userProfileImg;
	}
	public void setUserProfileImg(String userProfileImg) {
		this.userProfileImg = userProfileImg;
	}
	public int getReplyTypeNo() {
		return replyTypeNo;
	}
	public void setReplyTypeNo(int replyTypeNo) {
		this.replyTypeNo = replyTypeNo;
	}
	public String getReplyTypeName() {
		return replyTypeName;
	}
	public void setReplyTypeName(String replyTypeName) {
		this.replyTypeName = replyTypeName;
	}
	public int getReplyTargetNo() {
		return replyTargetNo;
	}
	public void setReplyTargetNo(int replyTargetNo) {
		this.replyTargetNo = replyTargetNo;
	}
	public String getReplyDt() {
		return replyDt;
	}
	public void setReplyDt(String replyDt) {
		this.replyDt = replyDt;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyStatus() {
		return replyStatus;
	}
	public void setReplyStatus(String replyStatus) {
		this.replyStatus = replyStatus;
	}
	public String getReplyTargetTitle() {
		return replyTargetTitle;
	}
	public void setReplyTargetTitle(String replyTargetTitle) {
		this.replyTargetTitle = replyTargetTitle;
	}
	
	
	
}
