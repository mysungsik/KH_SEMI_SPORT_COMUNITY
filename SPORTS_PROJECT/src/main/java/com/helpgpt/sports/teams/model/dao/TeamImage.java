package com.helpgpt.sports.teams.model.dao;

public class TeamImage {
	private int teamNo;
	private String imgOriginal;
	private String imgRename;
	private int imgLevel;
	private String imgDes; 
	
	public TeamImage() {}

	public TeamImage(int teamNo, String imgOriginal, String imgRename, int imgLevel, String imgDes) {
		super();
		this.teamNo = teamNo;
		this.imgOriginal = imgOriginal;
		this.imgRename = imgRename;
		this.imgLevel = imgLevel;
		this.imgDes = imgDes;
	}

	public int getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}

	public String getImgOriginal() {
		return imgOriginal;
	}

	public void setImgOriginal(String imgOriginal) {
		this.imgOriginal = imgOriginal;
	}

	public String getImgRename() {
		return imgRename;
	}

	public void setImgRename(String imgRename) {
		this.imgRename = imgRename;
	}

	public int getImgLevel() {
		return imgLevel;
	}

	public void setImgLevel(int imgLevel) {
		this.imgLevel = imgLevel;
	}

	public String getImgDes() {
		return imgDes;
	}

	public void setImgDes(String imgDes) {
		this.imgDes = imgDes;
	}

	@Override
	public String toString() {
		return "TeamImage [teamNo=" + teamNo + ", imgOriginal=" + imgOriginal + ", imgRename=" + imgRename
				+ ", imgLevel=" + imgLevel + ", imgDes=" + imgDes + "]";
	}
	
	
}


