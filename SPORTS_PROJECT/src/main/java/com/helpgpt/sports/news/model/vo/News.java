package com.helpgpt.sports.news.model.vo;

import java.util.ArrayList;
import java.util.List;

public class News {
	private int newsNo;
	private int userNo;
	private String userName;
	private int teamNo;
	private String teamName;
	private String newsTitle;
	private String newsPublisher;
	private String newsContent;
	private String createDt;
	private int newsViews;
	private String newsStatus;
	private String updateDt;
	private List<NewsImg> newsImgList = new ArrayList<NewsImg>();
	
	public News() {}
	public News(int newsNo, int userNo, String userName, int teamNo, String teamName, String newsTitle, String newsPublisher, String newsContent,
			String createDt, int newsViews, String newsStatus, String updateDt) {
		this.newsNo = newsNo;
		this.userNo = userNo;
		this.userName = userName;
		this.teamNo = teamNo;
		this.teamName = teamName;
		this.newsTitle = newsTitle;
		this.newsPublisher = newsPublisher;
		this.newsContent = newsContent;
		this.createDt = createDt;
		this.newsViews = newsViews;
		this.newsStatus = newsStatus;
		this.updateDt = updateDt;
	}
	
	public int getNewsNo() {
		return newsNo;
	}
	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getTeamNo() {
		return teamNo;
	}
	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsPublisher() {
		return newsPublisher;
	}
	public void setNewsPublisher(String newsPublisher) {
		this.newsPublisher = newsPublisher;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public int getNewsViews() {
		return newsViews;
	}
	public void setNewsViews(int newsViews) {
		this.newsViews = newsViews;
	}
	public String getNewsStatus() {
		return newsStatus;
	}
	public void setNewsStatus(String newsStatus) {
		this.newsStatus = newsStatus;
	}
	public String getUpdateDt() {
		return updateDt;
	}
	public void setUpdateDt(String updateDt) {
		this.updateDt = updateDt;
	}
	public String getCreateDt() {
		return createDt;
	}
	public void setCreateDt(String createDt) {
		this.createDt = createDt;
	}
	
	public void addNewsImg(NewsImg img) {
		this.newsImgList.add(img);
	}
	
	public List<NewsImg> getNewsImg() {
		return this.newsImgList;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	
	
	
}
