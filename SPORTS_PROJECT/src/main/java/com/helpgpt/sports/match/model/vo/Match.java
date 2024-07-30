package com.helpgpt.sports.match.model.vo;

import java.util.Date;

public class Match{
    private int matchNo;
    private int teamNo;
    private String teamName;
    private int stadiumNo;
    private String stadiumName;
    private int playerNo;
    private String playerName;
    private int score;
    private Date matchDt;
    private String ground;
    public Match() {}

	public Match( int teamNo, String teamName, int stadiumNo, String stadiumName, int playerNo,
			String playerName, int score, Date matchDt, String ground) {
		this.teamNo = teamNo;
		this.teamName = teamName;
		this.stadiumNo = stadiumNo;
		this.stadiumName = stadiumName;
		this.playerNo = playerNo;
		this.playerName = playerName;
		this.score = score;
		this.matchDt = matchDt;
		this.ground = ground;
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

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public int getStadiumNo() {
		return stadiumNo;
	}

	public void setStadiumNo(int stadiumNo) {
		this.stadiumNo = stadiumNo;
	}

	public String getStadiumName() {
		return stadiumName;
	}

	public void setStadiumName(String stadiumName) {
		this.stadiumName = stadiumName;
	}

	public int getPlayerNo() {
		return playerNo;
	}

	public void setPlayerNo(int playerNo) {
		this.playerNo = playerNo;
	}

	public String getPlayerName() {
		return playerName;
	}

	public void setPlayerName(String playerName) {
		this.playerName = playerName;
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

	public String getGround() {
		return ground;
	}

	public void setGround(String ground) {
		this.ground = ground;
	}


    
}