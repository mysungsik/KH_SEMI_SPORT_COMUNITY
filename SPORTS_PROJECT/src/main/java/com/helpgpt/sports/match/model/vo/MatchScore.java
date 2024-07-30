package com.helpgpt.sports.match.model.vo;

import java.util.Date;

public class MatchScore{
    private int scoreNo;
    private int matchNo;
    private int teamNo;
    private int hit;
    private int homeRun;
    private int stkOut;
    private int stoleBase;
    private int doublePlay;
    private int errorScore;
    private String teamName;
   

    public MatchScore() {}

    public MatchScore(int scoreNo, int matchNo, int teamNo, int hit, int homeRun, int stkOut, int stoleBase, int doublePlay, int errorScore,
    		String teamName) 
    {	
    	this.scoreNo = scoreNo;
        this.matchNo = matchNo;
        this.teamNo = teamNo;
        this.hit = hit;
        this.homeRun = homeRun;
        this.stkOut = stkOut;
        this.stoleBase = stoleBase;
        this.doublePlay = doublePlay;
        this.errorScore = errorScore;
        this.teamName = teamName;
    }

	public int getScoreNo() {
		return scoreNo;
	}

	public void setScoreNo(int scoreNo) {
		this.scoreNo = scoreNo;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getHomeRun() {
		return homeRun;
	}

	public void setHomeRun(int homeRun) {
		this.homeRun = homeRun;
	}

	public int getStkOut() {
		return stkOut;
	}

	public void setStkOut(int stkOut) {
		this.stkOut = stkOut;
	}

	public int getStoleBase() {
		return stoleBase;
	}

	public void setStoleBase(int stoleBase) {
		this.stoleBase = stoleBase;
	}

	public int getDoublePlay() {
		return doublePlay;
	}

	public void setDoublePlay(int doublePlay) {
		this.doublePlay = doublePlay;
	}

	public int getErrorScore() {
		return errorScore;
	}

	public void setErrorScore(int errorScore) {
		this.errorScore = errorScore;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	
	
	

    
}