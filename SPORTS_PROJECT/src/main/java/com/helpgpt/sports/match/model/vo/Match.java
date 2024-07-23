package com.helpgpt.sports.match.model.vo;

public class Match {
    private int matchNo;
    private int teamNo;
    private int stadiumNo;
    private int positionNo;
    private int score;
    private String matchDate;
    private String ground;

    // Getters and Setters
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

    public String getMatchDate() {
        return matchDate;
    }

    public void setMatchDate(String matchDate) {
        this.matchDate = matchDate;
    }

    public String getGround() {
        return ground;
    }

    public void setGround(String ground) {
        this.ground = ground;
    }

	@Override
	public String toString() {
		return "Match [matchNo=" + matchNo + ", teamNo=" + teamNo + ", stadiumNo=" + stadiumNo + ", positionNo="
				+ positionNo + ", score=" + score + ", matchDate=" + matchDate + ", ground=" + ground + "]";
	}
}

