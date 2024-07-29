package com.helpgpt.sports.match.model.vo;

public class PitcherRecord {
    private String playerName;
    private int inning;
    private int pitchCount;
    private int hitted;
    private int homeruned;
    private int strikeOuted;
    private int deadBall;
    private int lossScore;
    private int selfLose;
    private double era;
    private double whip;
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public int getInning() {
		return inning;
	}
	public void setInning(int inning) {
		this.inning = inning;
	}
	public int getPitchCount() {
		return pitchCount;
	}
	public void setPitchCount(int pitchCount) {
		this.pitchCount = pitchCount;
	}
	public int getHitted() {
		return hitted;
	}
	public void setHitted(int hitted) {
		this.hitted = hitted;
	}
	public int getHomeruned() {
		return homeruned;
	}
	public void setHomeruned(int homeruned) {
		this.homeruned = homeruned;
	}
	public int getStrikeOuted() {
		return strikeOuted;
	}
	public void setStrikeOuted(int strikeOuted) {
		this.strikeOuted = strikeOuted;
	}
	public int getDeadBall() {
		return deadBall;
	}
	public void setDeadBall(int deadBall) {
		this.deadBall = deadBall;
	}
	public int getLossScore() {
		return lossScore;
	}
	public void setLossScore(int lossScore) {
		this.lossScore = lossScore;
	}
	public int getSelfLose() {
		return selfLose;
	}
	public void setSelfLose(int selfLose) {
		this.selfLose = selfLose;
	}
	public double getEra() {
		return era;
	}
	public void setEra(double era) {
		this.era = era;
	}
	public double getWhip() {
		return whip;
	}
	public void setWhip(double whip) {
		this.whip = whip;
	}

    
}