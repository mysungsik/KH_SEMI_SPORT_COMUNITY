package com.helpgpt.sports.teams.model.vo;

public class Player {
	
	private int playerNo;
	private String imgOriginal;
	private String imgRename;
	private int imgLevel;
	private int positionNo;
	private String positionName;
	private int teamNo;
	private String playerName;
	private int playerUniformNo;
	private String playerBD;
	private String joinYear;
	private int height;
	private int weight;
	private String school;
	private int salary;
	private String career;
	private char playerSt;
	
	
	
	// 찝찝한 곳
	public Player(int playerNo, int positionNo, String positionName, int teamNo, String playerName,
			int playerUniformNo, String imgOriginal, String imgOriginal2 ) {
		super();
		this.playerNo = playerNo;
		this.positionNo = positionNo;
		this.positionName = positionName;
		this.teamNo = teamNo;
		this.playerName = playerName;
		this.playerUniformNo = playerUniformNo;
		this.imgOriginal = imgOriginal;
		this.imgOriginal = imgOriginal2;
	}



	public Player(int playerNo, String imgOriginal, String imgRename, int imgLevel, int positionNo, String positionName,
			int teamNo, String playerName, int playerUniformNo, String playerBD, String joinYear, int height, int weight,
			String school, int salary, String career, char playerSt) {
		super();
		this.playerNo = playerNo;
		this.imgOriginal = imgOriginal;
		this.imgRename = imgRename;
		this.imgLevel = imgLevel;
		this.positionNo = positionNo;
		this.positionName = positionName;
		this.teamNo = teamNo;
		this.playerName = playerName;
		this.playerUniformNo = playerUniformNo;
		this.playerBD = playerBD;
		this.joinYear = joinYear;
		this.height = height;
		this.weight = weight;
		this.school = school;
		this.salary = salary;
		this.career = career;
		this.playerSt = playerSt;
	}

	public Player(int playerNo, int positionNo, String postionName, int teamNo, String playerName, int playerUniformNo, String playerBD,
			String joinYear, int height, int weight, String school, int salary, String career, char playerState,
			String positionName, String playerPoseImg) {
		this.playerNo = playerNo;
		this.positionNo=positionNo;
		this.positionName=positionName;
		this.teamNo=teamNo;
		this.playerName=playerName;
		this.playerUniformNo=playerUniformNo;
		this.playerBD = playerBD;
		this.joinYear = joinYear;
		this.height = height;
		this.weight = weight;
		this.school = school;
		this.salary = salary;
		this.career = career;
		this.playerSt = playerState;
	}
	


	public int getPlayerNo() {
		return playerNo;
	}

	public void setPlayerNo(int playerNo) {
		this.playerNo = playerNo;
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

	public int getPositionNo() {
		return positionNo;
	}

	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public int getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}

	public String getPlayerName() {
		return playerName;
	}

	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}

	public int getPlayerUniformNo() {
		return playerUniformNo;
	}

	public void setPlayerUniformNo(int playerUniformNo) {
		this.playerUniformNo = playerUniformNo;
	}

	public String getPlayerBD() {
		return playerBD;
	}

	public void setPlayerBD(String playerBD) {
		this.playerBD = playerBD;
	}

	public String getJoinYear() {
		return joinYear;
	}

	public void setJoinYear(String joinYear) {
		this.joinYear = joinYear;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public char getPlayerSt() {
		return playerSt;
	}

	public void setPlayerSt(char playerSt) {
		this.playerSt = playerSt;
	}

	
}
