package com.helpgpt.sports.match.model.vo;

import java.util.Date;

public class StadiumInfo{
    private int stadiumNo;
    private String stadiumName;
    private int maxPeople;
    private int widthField;
    private String stadiumPlace;


   

    public StadiumInfo() {}

    public StadiumInfo(int stadiumNo, String stadiumName, int maxPeople, int widthField, String stadiumPlace) 
    {	
    	this.stadiumNo = stadiumNo;
        this.stadiumName = stadiumName;
        this.maxPeople = maxPeople;
        this.widthField = widthField;
        this.stadiumPlace = stadiumPlace;
       
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

	public int getMaxPeople() {
		return maxPeople;
	}

	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}

	public int getWidthField() {
		return widthField;
	}

	public void setWidthField(int widthField) {
		this.widthField = widthField;
	}

	public String getStadiumPlace() {
		return stadiumPlace;
	}

	public void setStadiumPlace(String stadiumPlace) {
		this.stadiumPlace = stadiumPlace;
	}

	
	

    
}