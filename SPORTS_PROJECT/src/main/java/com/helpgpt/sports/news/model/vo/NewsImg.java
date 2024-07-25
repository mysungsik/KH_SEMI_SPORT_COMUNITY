package com.helpgpt.sports.news.model.vo;

public class NewsImg {
	private int newsNo;
	private String imgRename;
	private String imgOriginal;
	private int imgLevel;
	
	public NewsImg() {}
	public NewsImg(int newsNo, String imgRename, String imgOriginal, int imgLevel) {
		this.newsNo = newsNo;
		this.imgRename = imgRename;
		this.imgOriginal = imgOriginal;
		this.imgLevel = imgLevel;
	}
	
	public int getNewsNo() {
		return newsNo;
	}
	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}
	public String getImgRename() {
		return imgRename;
	}
	public void setImgRename(String imgRename) {
		this.imgRename = imgRename;
	}
	public String getImgOriginal() {
		return imgOriginal;
	}
	public void setImgOriginal(String imgOriginal) {
		this.imgOriginal = imgOriginal;
	}
	public int getImgLevel() {
		return imgLevel;
	}
	public void setImgLevel(int imgLevel) {
		this.imgLevel = imgLevel;
	}
}
