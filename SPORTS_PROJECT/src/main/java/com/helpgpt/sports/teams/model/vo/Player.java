package com.helpgpt.sports.teams.model.vo;

public class Player {
	
	private int playerNo;
	private int positionNo;
	private int teamNo;
	private String playerName;
	private int playerUniformNo;
	private char playerBD;
	private char joinYear;
	private int height;
	private int weight;
	private String school;
	private int salary;
	private String career;
	private char playerSt;
	
	
	
	public Player(int playerNo, int positionNo, int teamNo, String playerName, int playerUniformNo, char playerBD,
			char joinYear, int height, int weight, String school, int salary, String career, char playerSt) {
		super();
		this.playerNo = playerNo;
		this.positionNo = positionNo;
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
	
	public int getPlayerNo() {
		return playerNo;
	}
	public void setPlayerNo(int playerNo) {
		this.playerNo = playerNo;
	}
	public int getPositionNo() {
		return positionNo;
	}
	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
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
	public char getPlayerBD() {
		return playerBD;
	}
	public void setPlayerBD(char playerBD) {
		this.playerBD = playerBD;
	}
	public char getJoinYear() {
		return joinYear;
	}
	public void setJoinYear(char joinYear) {
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

	@Override
	public String toString() {
		return "Player [playerNo=" + playerNo + ", positionNo=" + positionNo + ", teamNo=" + teamNo + ", playerName="
				+ playerName + ", playerUniformNo=" + playerUniformNo + ", playerBD=" + playerBD + ", joinYear="
				+ joinYear + ", height=" + height + ", weight=" + weight + ", school=" + school + ", salary=" + salary
				+ ", career=" + career + ", playerSt=" + playerSt + "]";
	}
	
	
}
