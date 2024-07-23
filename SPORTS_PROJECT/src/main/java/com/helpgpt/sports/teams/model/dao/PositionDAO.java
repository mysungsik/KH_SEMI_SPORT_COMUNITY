package com.helpgpt.sports.teams.model.dao;

import java.io.Closeable;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

public class PositionDAO {
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Properties prop;
	
	public PositionDAO() {
		try {
			prop = new Properties();
			String filePath = PositionDAO.class.getResource("/com/helpgpt/sports/common/sqls/position-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** 포지션 이름 조회 DAO
	 * @param conn
	 * @param type
	 * @return positionName
	 * @throws Exception
	 */
	public String selectPositionName(Connection conn, int type) throws Exception {
		
		String positionName = null;
		
		try {
			String sql = prop.getProperty("selectPositionName");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				positionName = rs.getString(1);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return positionName;
	}

	/** 특정 포지션 전체 선수 조회 DAO
	 * @param conn
	 * @param type
	 * @return playerCount
	 * @throws Exception
	 */
	public int getPlayerCount(Connection conn, int type) throws Exception{
		int playerCount = 0;
		
		try {
			String sql = prop.getProperty("getPlayerCount");
			
			pstmt = conn.prepareStatement(sql);
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return playerCount;
	}
	
	
}
