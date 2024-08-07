package com.helpgpt.sports.community.model.vo;

public class Community {

	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private int userNo;
	private int teamNo;
	private String boardAuthor;
	private String boardCreateDate;
	private int boardViews;
	private int typeNo;
	private String boardCategory;
	private int boardComent; 
	private int boardLike;
	private String userImage;
	
	public Community() {}
	public Community(int boardNo, String boardTitle, String boardCategory) {
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardCategory = boardCategory;
	}


	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public int getTeamNo() {
		return teamNo;
	}
	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getBoardAuthor() {
		return boardAuthor;
	}
	public int getTypeNo() {
		return typeNo;
	}
	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}
	public void setBoardAuthor(String boardAuthor) {
		this.boardAuthor = boardAuthor;
	}
	public String getBoardCreateDate() {
		return boardCreateDate;
	}
	public void setBoardCreateDate(String boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
	}
	public int getBoardViews() {
		return boardViews;
	}
	public void setBoardViews(int boardViews) {
		this.boardViews = boardViews;
	}
	public String getBoardCategory() {
		return boardCategory;
	}
	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}
	public int getBoardComent() {
		return boardComent;
	}
	public void setBoardComent(int boardComent) {
		this.boardComent = boardComent;
	}
	public int getBoardLike() {
		return boardLike;
	}
	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}
	
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	@Override
	public String toString() {
		return "Community [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", userNo=" + userNo + ", teamNo=" + teamNo + ", boardAuthor=" + boardAuthor + ", boardCreateDate="
				+ boardCreateDate + ", boardViews=" + boardViews + ", typeNo=" + typeNo + ", boardCategory="
				+ boardCategory + ", boardComent=" + boardComent + ", boardLike=" + boardLike + ", userImage="
				+ userImage + "]";
	}

	
}
