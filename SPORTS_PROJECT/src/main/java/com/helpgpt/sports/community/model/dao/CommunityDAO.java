package com.helpgpt.sports.community.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.community.model.vo.Board;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

public class CommunityDAO {
	
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public CommunityDAO() {
		String defaultpath = "/com/helpgpt/sports/common/sqls/";
		String filePath = CommunityDAO.class.getResource(defaultpath + "community-sql.xml").getPath();
		try {
			prop = new Properties();
			FileInputStream fis = new FileInputStream(filePath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Load community-sql file");
			e.printStackTrace();
		}
	}

	public List<Board> selectBoardList(Connection conn, int type){
		List<Board> boardList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectBoardList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCategory(rs.getString("TYPE_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));
			
				boardList.add(board);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("[ERROR] Failed to select Board");
		}finally {
			close(pstmt);
		}
		
		
		return boardList;
	}

	public Board selectBoardDetail(Connection conn, int boardNo) {
		Board board = null;
		
		try {
			String sql = prop.getProperty("selectBoardDetail");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board = new Board();
				
				board.setBoardContent(rs.getString("COMM_CONTENT"));
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCategory(rs.getString("TYPE_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("[ERROR] Failed to select Board");
		}finally {
			close(pstmt);
		}
		
		
		return board;
	}


}
