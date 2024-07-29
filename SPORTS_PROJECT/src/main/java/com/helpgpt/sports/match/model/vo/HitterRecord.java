package com.helpgpt.sports.match.model.vo;

public class HitterRecord {
    private String playerName;
    private int atBat;
    private int hit;
    private int doubleHit;
    private int tripleHit;
    private int homeRun;
    private int run;
    private int rbi;
    private int strikeOut;
    private int walk;
    private double avg;

    // Getters and Setters

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public int getAtBat() {
        return atBat;
    }

    public void setAtBat(int atBat) {
        this.atBat = atBat;
    }

    public int getHit() {
        return hit;
    }

    public void setHit(int hit) {
        this.hit = hit;
    }

    public int getDoubleHit() {
        return doubleHit;
    }

    public void setDoubleHit(int doubleHit) {
        this.doubleHit = doubleHit;
    }

    public int getTripleHit() {
        return tripleHit;
    }

    public void setTripleHit(int tripleHit) {
        this.tripleHit = tripleHit;
    }

    public int getHomeRun() {
        return homeRun;
    }

    public void setHomeRun(int homeRun) {
        this.homeRun = homeRun;
    }

    public int getRun() {
        return run;
    }

    public void setRun(int run) {
        this.run = run;
    }

    public int getRbi() {
        return rbi;
    }

    public void setRbi(int rbi) {
        this.rbi = rbi;
    }

    public int getStrikeOut() {
        return strikeOut;
    }

    public void setStrikeOut(int strikeOut) {
        this.strikeOut = strikeOut;
    }

    public int getWalk() {
        return walk;
    }

    public void setWalk(int walk) {
        this.walk = walk;
    }

    public double getAvg() {
        return avg;
    }

    public void setAvg(double avg) {
        this.avg = avg;
    }
}
