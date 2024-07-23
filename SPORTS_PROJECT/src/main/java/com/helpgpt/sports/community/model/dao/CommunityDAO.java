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

	public List<Board> selectBoardList(Connection conn, int type) throws Exception{
		List<Board> boardList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectBoardList");
			
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			
			rs = pstmt.executeQuery();
			System.out.println(type);
			
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCategory(rs.getString("TYPE_NAME"));
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardContent(rs.getNString("COMM_CONTENT"));
				
				System.out.println(board); 
			}
			
			

			
			
		}finally {
			close(pstmt);
		}
		
		
		return boardList;
	}


}
