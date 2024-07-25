package com.helpgpt.sports.community.model.vo;

public class CommunityImage {
	
	private int boardNo;
	private String imageRename;
	private String imageOriginal;
	private int imageLevel;
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getImageRename() {
		return imageRename;
	}
	public void setImageRename(String imageRename) {
		this.imageRename = imageRename;
	}
	public String getImageOriginal() {
		return imageOriginal;
	}
	public void setImageOriginal(String imageOriginal) {
		this.imageOriginal = imageOriginal;
	}
	public int getImageLevel() {
		return imageLevel;
	}
	public void setImageLevel(int imageLevel) {
		this.imageLevel = imageLevel;
	}
	@Override
	public String toString() {
		return "CommunityImage [boardNo=" + boardNo + ", imageRename=" + imageRename + ", imageOriginal="
				+ imageOriginal + ", imageLevel=" + imageLevel + "]";
	}
	
	

}
