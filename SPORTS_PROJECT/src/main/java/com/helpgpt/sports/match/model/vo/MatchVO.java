package com.helpgpt.sports.match.model.vo;

import java.util.Date;

public class MatchVO {
    private int matchNo;
    private int teamNo;
    private int stadiumNo;
    private int positionNo;
    private int score;
    private Date matchDt;
    private String ground;

    public MatchVO() {}

    public MatchVO(int matchNo, int teamNo, int stadiumNo, int positionNo, int score, Date matchDt, String ground) {
        this.matchNo = matchNo;
        this.teamNo = teamNo;
        this.stadiumNo = stadiumNo;
        this.positionNo = positionNo;
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

	public String getGround() {
		return ground;
	}

	public void setGround(String ground) {
		this.ground = ground;
	}

    
}