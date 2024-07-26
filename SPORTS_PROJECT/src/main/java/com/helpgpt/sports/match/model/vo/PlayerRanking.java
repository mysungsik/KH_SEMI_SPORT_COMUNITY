package com.helpgpt.sports.match.model.vo;

public class PlayerRanking {
    private String playerName;
    private String teamName;
    private int winCount; // 승리 수
    private double era; // 평균 자책점
    private int hit; // 안타
    private double whip; // whip
    private int strikeouts;
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public int getWinCount() {
		return winCount;
	}
	public void setWinCount(int winCount) {
		this.winCount = winCount;
	}
	public double getEra() {
		return era;
	}
	public void setEra(double era) {
		this.era = era;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public double getWhip() {
		return whip;
	}
	public void setWhip(double whip) {
		this.whip = whip;
	}
	public int getStrikeouts() {
		return strikeouts;
	}
	public void setStrikeouts(int strikeouts) {
		this.strikeouts = strikeouts;
	} // 탈삼진
}
    // getters and setters
   
    
