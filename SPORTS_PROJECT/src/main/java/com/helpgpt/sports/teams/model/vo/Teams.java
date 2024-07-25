package com.helpgpt.sports.teams.model.vo;

import java.util.List;

import com.helpgpt.sports.teams.model.dao.TeamImage;

public class Teams {
	private int teamNo;
	private int stadiumNo;
	private String teamName;
	private String teamLeader;
	private String director;
	private String sponsor;
	private String teamRegion;
	private String teamDes;
	private char teamSt;
	private String videoUrl;
	private String teamColor;
	
	private TeamImage teamImage = new TeamImage();
	
	public Teams() {}
	
	// 구단 모음용 객체
	public Teams(int teamNo, String teamName, String imgOriginal, String teamColor) {
		this.teamNo = teamNo;
		this.teamName= teamName;
		this.teamImage  = new TeamImage();
		this.teamImage.setImgOriginal(imgOriginal);
		this.teamImage.setTeamNo(teamNo);
		this.teamColor= teamColor;
	}
	
	public Teams(int teamNo, int stadiumNo, String teamName, String teamLeader, String director, String sponsor,
			String teamRegion, String teamDes, char teamSt, String videoUrl, String teamColor) {
		super();
		this.teamNo = teamNo;
		this.stadiumNo = stadiumNo;
		this.teamName = teamName;
		this.teamLeader = teamLeader;
		this.director = director;
		this.sponsor = sponsor;
		this.teamRegion = teamRegion;
		this.teamDes = teamDes;
		this.teamSt = teamSt;
		this.videoUrl = videoUrl;
		this.teamColor = teamColor;
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


	public String getTeamDes() {
		return teamDes;
	}


	public void setTeamDes(String teamDes) {
		this.teamDes = teamDes;
	}


	public char getTeamSt() {
		return teamSt;
	}


	public void setTeamSt(char teamSt) {
		this.teamSt = teamSt;
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
	

	public TeamImage getTeamImage() {
		return teamImage;
	}

	public void setTeamImage(TeamImage teamImage) {
		this.teamImage = teamImage;
	}
	

	@Override
	public String toString() {
		return "Teams [teamNo=" + teamNo + ", stadiumNo=" + stadiumNo + ", teamName=" + teamName + ", teamLeader="
				+ teamLeader + ", director=" + director + ", sponsor=" + sponsor + ", teamRegion=" + teamRegion
				+ ", teamDes=" + teamDes + ", teamSt=" + teamSt + ", videoUrl=" + videoUrl + ", teamColor=" + teamColor
				+ ", teamImage=" + teamImage + "]";
	}


	
}
