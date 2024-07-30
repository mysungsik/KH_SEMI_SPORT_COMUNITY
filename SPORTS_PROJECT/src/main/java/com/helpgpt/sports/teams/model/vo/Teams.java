package com.helpgpt.sports.teams.model.vo;

public class Teams {
    private int teamNo;
    private int stadiumNo;
    private String teamName;
    private String teamLeader;
    private String director;
    private String sponsor;
    private String teamRegion;
    private String teamDescription;
    private char teamStatus;
    private String videoUrl;
    private String teamColor;
    private String imgOriginal1;
    private String imgDescription1;
    private String imgOriginal2;
    private String imgDescription2;
	private String imgOriginal3;
    private String imgOriginal4;

    public Teams() {}

	public Teams(int teamNo, String teamName, char teamStatus, String teamColor, String imgOriginal1) {
		super();
		this.teamNo = teamNo;
		this.teamName = teamName;
		this.teamStatus = teamStatus;
		this.teamColor = teamColor;
		this.imgOriginal1 = imgOriginal1;
	}

    // 구단 추가용 객체
	public Teams(String teamName, String teamLeader, String director, String sponsor, String teamRegion,
			String teamDescription, String videoUrl, String teamColor, String imgOriginal1, String imgDescription1,
			String imgOriginal2, String imgDescription2, String imgOriginal3, String imgOriginal4) {
		super();
		this.teamName = teamName;
		this.teamLeader = teamLeader;
		this.director = director;
		this.sponsor = sponsor;
		this.teamRegion = teamRegion;
		this.teamDescription = teamDescription;
		this.videoUrl = videoUrl;
		this.teamColor = teamColor;
		this.imgOriginal1 = imgOriginal1;
		this.imgDescription1 = imgDescription1;
		this.imgOriginal2 = imgOriginal2;
		this.imgDescription2 = imgDescription2;
		this.imgOriginal3 = imgOriginal3;
		this.imgOriginal4 = imgOriginal4;
	}

	
	public Teams(int teamNo, int stadiumNo, String teamName, String teamLeader, String director, String sponsor,
			String teamRegion, String teamDescription, char teamStatus, String videoUrl, String teamColor,
			String imgOriginal1, String imgOriginal2, String imgOriginal3, String imgOriginal4) {
		super();
		this.teamNo = teamNo;
		this.stadiumNo = stadiumNo;
		this.teamName = teamName;
		this.teamLeader = teamLeader;
		this.director = director;
		this.sponsor = sponsor;
		this.teamRegion = teamRegion;
		this.teamDescription = teamDescription;
		this.teamStatus = teamStatus;
		this.videoUrl = videoUrl;
		this.teamColor = teamColor;
		this.imgOriginal1 = imgOriginal1;
		this.imgOriginal2 = imgOriginal2;
		this.imgOriginal3 = imgOriginal3;
		this.imgOriginal4 = imgOriginal4;
	}

	// 전체
	public Teams(int teamNo, int stadiumNo, String teamName, String teamLeader, String director, String sponsor,
			String teamRegion, String teamDescription, char teamStatus, String videoUrl, String teamColor,
			String imgOriginal1, String imgDescription1, String imgOriginal2, String imgDescription2,
			String imgOriginal3, String imgOriginal4) {
		super();
		this.teamNo = teamNo;
		this.stadiumNo = stadiumNo;
		this.teamName = teamName;
		this.teamLeader = teamLeader;
		this.director = director;
		this.sponsor = sponsor;
		this.teamRegion = teamRegion;
		this.teamDescription = teamDescription;
		this.teamStatus = teamStatus;
		this.videoUrl = videoUrl;
		this.teamColor = teamColor;
		this.imgOriginal1 = imgOriginal1;
		this.imgDescription1 = imgDescription1;
		this.imgOriginal2 = imgOriginal2;
		this.imgDescription2 = imgDescription2;
		this.imgOriginal3 = imgOriginal3;
		this.imgOriginal4 = imgOriginal4;
	}

	public int getTeamNo() {
		return teamNo;
	}


	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}


	public int getStadiumNo() {
		return stadiumNo;
	}


	public void setStadiumNo(int stadiumNo) {
		this.stadiumNo = stadiumNo;
	}


	public String getTeamName() {
		return teamName;
	}


	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}


	public String getTeamLeader() {
		return teamLeader;
	}


	public void setTeamLeader(String teamLeader) {
		this.teamLeader = teamLeader;
	}


	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}


	public String getSponsor() {
		return sponsor;
	}


	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}


	public String getTeamRegion() {
		return teamRegion;
	}


	public void setTeamRegion(String teamRegion) {
		this.teamRegion = teamRegion;
	}


	public String getTeamDescription() {
		return teamDescription;
	}


	public void setTeamDescription(String teamDescription) {
		this.teamDescription = teamDescription;
	}


	public char getTeamStatus() {
		return teamStatus;
	}


	public void setTeamStatus(char teamStatus) {
		this.teamStatus = teamStatus;
	}


	public String getVideoUrl() {
		return videoUrl;
	}


	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}


	public String getTeamColor() {
		return teamColor;
	}


	public void setTeamColor(String teamColor) {
		this.teamColor = teamColor;
	}


	public String getImgOriginal1() {
		return imgOriginal1;
	}


	public void setImgOriginal1(String imgOriginal1) {
		this.imgOriginal1 = imgOriginal1;
	}


	public String getImgOriginal2() {
		return imgOriginal2;
	}


	public void setImgOriginal2(String imgOriginal2) {
		this.imgOriginal2 = imgOriginal2;
	}


	public String getImgOriginal3() {
		return imgOriginal3;
	}


	public void setImgOriginal3(String imgOriginal3) {
		this.imgOriginal3 = imgOriginal3;
	}


	public String getImgOriginal4() {
		return imgOriginal4;
	}


	public void setImgOriginal4(String imgOriginal4) {
		this.imgOriginal4 = imgOriginal4;
	}

	
	public String getImgDescription1() {
		return imgDescription1;
	}


	public void setImgDescription1(String imgDescription1) {
		this.imgDescription1 = imgDescription1;
	}


	public String getImgDescription2() {
		return imgDescription2;
	}


	public void setImgDescription2(String imgDescription2) {
		this.imgDescription2 = imgDescription2;
	}
	
}