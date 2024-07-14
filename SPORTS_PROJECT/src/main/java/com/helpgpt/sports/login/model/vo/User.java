package com.helpgpt.sports.login.model.vo;

public class User {
	// TODO: DB 생성후 멤버변수 생성
	private int userNo;
	private int favoriteTeamNo;
	private String userId;
	private String userPw;
	private String userEmail;
	private String userName;
	private String userPhone;
	private String userSns;
	private String userBd;
	private String userAddress;
	private String userGender;
	private String userNation;
	private String userProfileImg;
	private String userAuthority;
	private String userState;
	private String createdDate;
	private String deletedDate;
	
	// 유저 로그인용객체
	public User(String userId, String userPw) {
		this.userId = userId;
		this.userPw = userPw;
	}
	
	// 유저 회원가입용객체
	public User(String userId, String userPw, String userEmail, String userName,String userPhone,
			String userBd, String userAddress, String userGender, String userNation) {
		this.userId = userId;
		this.userPw = userPw;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userBd = userBd;
		this.userAddress = userAddress;
		this.userGender = userGender;
		this.userNation = userNation;
	}
	
	// 유저 정보 전달 객체 (pw 제외 전부)
	public User(int userNo, int favoriteTeamNo, String userId, String userPw, String userEmail, String userName,String userPhone,
			String userSns, String userBd, String userAddress, String userGender, String userNation,
			String userProfileImg, String userAuthority, String userState, String createdDate, String deletedDate) {
		this.userNo = userNo;
		this.favoriteTeamNo = favoriteTeamNo;
		this.userId = userId;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userSns = userSns;
		this.userBd = userBd;
		this.userAddress = userAddress;
		this.userGender = userGender;
		this.userNation = userNation;
		this.userProfileImg = userProfileImg;
		this.userAuthority = userAuthority;
		this.userState = userState;
		this.createdDate = createdDate;
		this.deletedDate = deletedDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getFavoriteTeamNo() {
		return favoriteTeamNo;
	}

	public void setFavoriteTeamNo(int favoriteTeamNo) {
		this.favoriteTeamNo = favoriteTeamNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserSns() {
		return userSns;
	}

	public void setUserSns(String userSns) {
		this.userSns = userSns;
	}

	public String getUserBd() {
		return userBd;
	}

	public void setUserBd(String userBd) {
		this.userBd = userBd;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserNation() {
		return userNation;
	}

	public void setUserNation(String userNation) {
		this.userNation = userNation;
	}

	public String getUserProfileImg() {
		return userProfileImg;
	}

	public void setUserProfileImg(String userProfileImg) {
		this.userProfileImg = userProfileImg;
	}

	public String getUserAuthority() {
		return userAuthority;
	}

	public void setUserAuthority(String userAuthority) {
		this.userAuthority = userAuthority;
	}

	public String getUserState() {
		return userState;
	}

	public void setUserState(String userState) {
		this.userState = userState;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getDeletedDate() {
		return deletedDate;
	}

	public void setDeletedDate(String deletedDate) {
		this.deletedDate = deletedDate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", favoriteTeamNo=" + favoriteTeamNo + ", userId=" + userId + ", userPw="
				+ userPw + ", userEmail=" + userEmail + ", userName=" + userName + ", userPhone=" + userPhone
				+ ", userSns=" + userSns + ", userBd=" + userBd + ", userAddress=" + userAddress + ", userGender="
				+ userGender + ", userNation=" + userNation + ", userProfileImg=" + userProfileImg + ", userAuthority="
				+ userAuthority + ", userState=" + userState + ", createdDate=" + createdDate + ", deletedDate="
				+ deletedDate + "]";
	}
	
	
	
	
}
