package com.helpgpt.sports.community.model.vo;

public class Board {
	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String boardAuthor;
	private String boardCreateDate;
	private int boardViews;
	private String boardCategory;
	private int boardComent; 
	private int boardLike;
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
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardAuthor() {
		return boardAuthor;
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
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardAuthor=" + boardAuthor + ", boardCreateDate=" + boardCreateDate + ", boardViews=" + boardViews
				+ ", boardCategory=" + boardCategory + ", boardComent=" + boardComent + ", boardLike=" + boardLike
				+ "]";
	}

	
	
}
