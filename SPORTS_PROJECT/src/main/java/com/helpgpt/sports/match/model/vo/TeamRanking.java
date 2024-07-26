package com.helpgpt.sports.match.model.vo;

public class TeamRanking {
    private String teamName;
    private int matchCount;
    private int win;
    private int lose;
    private int gameDifference; // matchMain 전용
    private double winRate; // matchTeamRanking 전용
    private double battingAvg; // matchTeamRanking 전용
    private double era; // matchTeamRanking 전용
    private String recentMatch; // matchTeamRanking 전용

    // Getters and setters
    public String getTeamName() {
        return teamName;
    }
    public void setTeamName(String teamName) {
        this.teamName = teamName;
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
    public int getGameDifference() {
        return gameDifference;
    }
    public void setGameDifference(int gameDifference) {
        this.gameDifference = gameDifference;
    }
    public double getWinRate() {
        return winRate;
    }
    public void setWinRate(double winRate) {
        this.winRate = winRate;
    }
    public double getBattingAvg() {
        return battingAvg;
    }
    public void setBattingAvg(double battingAvg) {
        this.battingAvg = battingAvg;
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
}
