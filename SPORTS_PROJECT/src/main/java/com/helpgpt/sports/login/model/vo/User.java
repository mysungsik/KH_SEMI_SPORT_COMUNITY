package com.helpgpt.sports.login.model.vo;

public class User {
	// TODO: DB 생성후 멤버변수 생성
	private int UserNo;
	private String UserId;
	private String UserEmail;
	private String UserPw;
	private String UserAuthority;
	private String UserFavorite;
	
	// TODO: Password가 생성자에 들어가있음을 확인
	public User(int userNo, 
				String userId,
				String userEmail, 
				String userPw, 
				String UserAuthority,
				String UserFavorite) {
		this.UserNo = userNo;
		this.UserId = userId;
		this.UserEmail = userEmail;
		this.UserPw = userPw;
		this.UserAuthority = UserAuthority;
		this.UserFavorite = UserFavorite;
	}

	public int getUserNo() {
		return UserNo;
	}

	public void setUserNo(int userNo) {
		UserNo = userNo;
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public String getUserPw() {
		return UserPw;
	}

	public void setUserPw(String userPw) {
		UserPw = userPw;
	}

	public String getUserAuthority() {
		return UserAuthority;
	}

	public void setUserAuthority(String userAuthority) {
		UserAuthority = userAuthority;
	}

	public String getUserFavorite() {
		return UserFavorite;
	}

	public void setUserFavorite(String userFavorite) {
		UserFavorite = userFavorite;
	}
	
}
