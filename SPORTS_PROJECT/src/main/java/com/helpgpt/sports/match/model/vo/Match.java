package com.helpgpt.sports.match.model.vo;

public class Match {
    private int matchNo;
    private int teamNo;
    private String teamName;
    private int stadiumNo;
    private int positionNo;
    private int score;
    private String matchDate;
    private String ground;
    private int matchCount;
    private int win;
    private int lose;
    private double avg;
    private double winRate;
    private String consequence;
    private double battingAverage;
    private double era;
    private String recentMatch;

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

    public int getMatchCount() {
        return matchCount;
    }

    public void setMatchCount(int matchCount) {
        this.matchCount = matchCount;
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

    public double getAvg() {
        return avg;
    }

    public void setAvg(double avg) {
        this.avg = avg;
    }

    public double getWinRate() {
        return winRate;
    }

    public void setWinRate(double winRate) {
        this.winRate = winRate;
    }

    public String getConsequence() {
        return consequence;
    }

    public void setConsequence(String consequence) {
        this.consequence = consequence;
    }

    public double getBattingAverage() {
        return battingAverage;
    }

    public void setBattingAverage(double battingAverage) {
        this.battingAverage = battingAverage;
    }

    public double getEra() {
        return era;
    }

    public void setEra(double era) {
        this.era = era;
    }

    public String getRecentMatch() {
        return recentMatch;
    }

    public void setRecentMatch(String recentMatch) {
        this.recentMatch = recentMatch;
    }

    @Override
    public String toString() {
        return "Match [matchNo=" + matchNo + ", teamNo=" + teamNo + ", teamName=" + teamName + ", stadiumNo="
                + stadiumNo + ", positionNo=" + positionNo + ", score=" + score + ", matchDate=" + matchDate
                + ", ground=" + ground + ", matchCount=" + matchCount + ", win=" + win + ", lose=" + lose + ", avg="
                + avg + ", winRate=" + winRate + ", consequence=" + consequence + ", battingAverage=" + battingAverage
                + ", era=" + era + ", recentMatch=" + recentMatch + "]";
    }
}
