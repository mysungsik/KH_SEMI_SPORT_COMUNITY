package com.helpgpt.sports.match.model.vo;

import java.util.Date;

public class Match {
   
	
	// match table 
	private int matchNo;
	private int teamNo;
	private int stadiumNo;
	private int positionNo;
	private int score;
	private Date matchDt;
	private char ground;
	private String teamName;
	
	
	private int win;
	private int lose;
	private int matchCount;
	private double winRate;
	private String conseq;
	private double batRate;
	private double era;
	private String recent;

	
	
	
	public Match() {}
	
	
	// 팀 랭킹용 객체
	
	public Match(String teamName, int matchCount, int win, int lose, double winRate,
			String conseq, double batRate, double era, String recent   ) {
		this.teamName = teamName;
		this.matchCount = matchCount;
		this.win = win;
		this.lose = lose;
		this.winRate = winRate;
		this.conseq = conseq;
		this.batRate = batRate;
		this.era = era;
		this.recent = recent;
		
	}


	public int getMatchNo() {
		return matchNo;
	}


	public void setMatchNo(int matchNo) {
		this.matchNo = matchNo;
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


	public int getPositionNo() {
		return positionNo;
	}


	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}


	public int getScore() {
		return score;
	}


	public void setScore(int score) {
		this.score = score;
	}


	public Date getMatchDt() {
		return matchDt;
	}


	public void setMatchDt(Date matchDt) {
		this.matchDt = matchDt;
	}


	public char getGround() {
		return ground;
	}


	public void setGround(char ground) {
		this.ground = ground;
	}


	public String getTeamName() {
		return teamName;
	}


	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}


	public int getWin() {
		return win;
	}


	public void setWin(int win) {
		this.win = win;
	}


	public int getLose() {
		return lose;
	}


	public void setLose(int lose) {
		this.lose = lose;
	}


	public int getMatchCount() {
		return matchCount;
	}


	public void setMatchCount(int matchCount) {
		this.matchCount = matchCount;
	}


	public double getWinRate() {
		return winRate;
	}


	public void setWinRate(double winRate) {
		this.winRate = winRate;
	}


	public String getConseq() {
		return conseq;
	}


	public void setConseq(String conseq) {
		this.conseq = conseq;
	}


	public double getBatRate() {
		return batRate;
	}


	public void setBatRate(double batRate) {
		this.batRate = batRate;
	}


	public double getEra() {
		return era;
	}


	public void setEra(double era) {
		this.era = era;
	}


	public String getRecent() {
		return recent;
	}


	public void setRecent(String recent) {
		this.recent = recent;
	}


	@Override
	public String toString() {
		return "Match [matchNo=" + matchNo + ", teamNo=" + teamNo + ", stadiumNo=" + stadiumNo + ", positionNo="
				+ positionNo + ", score=" + score + ", matchDt=" + matchDt + ", ground=" + ground + ", teamName="
				+ teamName + ", win=" + win + ", lose=" + lose + ", matchCount=" + matchCount + ", winRate=" + winRate
				+ ", conseq=" + conseq + ", batRate=" + batRate + ", era=" + era + ", recent=" + recent + "]";
	}
	
	
	
	
	
   
    

    	
}
