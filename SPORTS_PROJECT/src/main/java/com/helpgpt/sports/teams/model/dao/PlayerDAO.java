package com.helpgpt.sports.teams.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.teams.model.service.PlayerService;
import com.helpgpt.sports.teams.model.vo.Player;

public class PlayerDAO {
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	Statement stmt;
	
	public PlayerDAO() {
		String defaultpath = "/com/helpgpt/sports/common/sqls/";
		String filepath = PlayerDAO.class.getResource(defaultpath + "player-sql.xml").getPath();
		try {
			prop = new Properties();
			FileInputStream fis = new FileInputStream(filepath);
			prop.loadFromXML(fis);
			
		} catch (Exception e) {
			System.err.println("[ERROR]Failed to Load teams-sql file");
			e.printStackTrace();
		}
	}

	/** 특정 팀 선수 정보 출력
	 * @param conn
	 * @param team
	 * @return
	 */
	public List<Player> getPlayers(Connection conn, String team) {
		List<Player> playerList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getPlayers");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, team);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int playerNo = rs.getInt("PLAYER_NO");
				int positionNo = rs.getInt("POSITION_NO");
				String positionName = rs.getString("POSITION_NAME");
				int teamNo = rs.getInt("TEAM_NO");
				String playerName = rs.getString("PLAYER_NAME");
				int playerUniformNo = rs.getInt("PLAYER_UNIFORM_NO");
				String headShot= rs.getString("HEADSHOT");
				String teamHeaderImg = rs.getString("TEAM_HEADER_IMG");
				
				Player player = new Player(playerNo, positionNo, positionName, teamNo, playerName, playerUniformNo, headShot, teamHeaderImg);
				playerList.add(player);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get PlayerInfo");

			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return playerList;
	}

	/** 특정팀 특정 포지션 가져오는 DAO
	 * @param conn
	 * @param team
	 * @param positionNo
	 * @return
	 */
	public List<Player> getPlayerPosition(Connection conn, String team, int positionNo) {
List<Player> playerList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getPlayers");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, team);
			pstmt.setInt(2, positionNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int playerNo = rs.getInt("PLAYER_NO");
				String positionName = rs.getString("POSITION_NAME");
				int teamNo = rs.getInt("TEAM_NO");
				String playerName = rs.getString("PLAYER_NAME");
				int playerUniformNo = rs.getInt("PLAYER_UNIFORM_NO");
				String headShot= rs.getString("HEADSHOT");
				String teamHeaderImg = rs.getString("TEAM_HEADER_IMG");
				
				Player player = new Player(playerNo, positionNo, positionName, teamNo, playerName, playerUniformNo, headShot, teamHeaderImg);
				playerList.add(player);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get PlayerInfo");

			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return playerList;
	}
	
	
}
