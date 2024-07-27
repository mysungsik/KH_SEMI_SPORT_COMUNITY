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

import com.helpgpt.sports.teams.model.vo.Teams;
public class TeamsDAO {
	
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	Statement stmt;

	public TeamsDAO() {
		try {
			prop = new Properties();
			String defaultpath = "/com/helpgpt/sports/common/sqls/";
			String filepath = TeamsDAO.class.getResource(defaultpath + "teams-sql.xml").getPath();
			FileInputStream fis = new FileInputStream(filepath);
			prop.loadFromXML(fis);
			
		} catch (Exception e) {
			System.err.println("[ERROR] Load to sql");
			e.printStackTrace();
		}
	}

	
	/** 모든 팀 정보 출력
	 * @param conn
	 * @param teamNo
	 * @return teamsList
	 */
	public List<Teams> getTeamsAll(Connection conn) {
		List<Teams> teamsList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getTeamsAll");
			stmt = conn.createStatement();
			rs= stmt.executeQuery(sql);
			while(rs.next()) {
				int teamNo = rs.getInt("TEAM_NO");
				int stadiumNo = rs.getInt("STADIUM_NO");
				String teamName = rs.getString("TEAM_NAME");
				String teamLeader = rs.getString("TEAM_LEADER");
				String director = rs.getString("DIRECTOR");
				String sponsor = rs.getString("SPONSOR");
				String teamRegion = rs.getString("TEAM_REGION");
				String teamDes = rs.getString("TEAM_DES");
				char teamStatus = rs.getString("TEAM_ST").charAt(0);
				String videoUrl = rs.getString("VIDEO_URL");
				String teamColor = rs.getString("TEAM_COLOR");
				String imgOriginal1 = rs.getString("IMG_ORIGINAL1");
				String imgOriginal2 = rs.getString("IMG_ORIGINAL1");
				String imgOriginal3 = rs.getString("IMG_ORIGINAL1");
				String imgOriginal4 = rs.getString("IMG_ORIGINAL1");
				
				Teams team = new Teams(teamNo, stadiumNo, teamName, teamLeader, director, sponsor, teamRegion, teamDes, teamStatus, videoUrl, teamColor, imgOriginal1, imgOriginal2, imgOriginal3, imgOriginal4);
				teamsList.add(team);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get teamInfo");
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rs);
		}
		
		return teamsList;
	}


	/** 특정 팀 정보(로고, 색깔, 이름) 출력 DAO (Nav용)
	 * @param conn
	 * @param team 
	 * @return teamNav
	 */
	public Teams getTeamNav(Connection conn, String team) {
		Teams teamNav = null;
		try {
			String sql = prop.getProperty("getTeamNav");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, team);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				int teamNo = rs.getInt("TEAM_NO");
				String teamName = rs.getString("TEAM_NAME");
				String imgOriginal = rs.getString("IMG_ORIGINAL");
				String teamColor = rs.getString("TEAM_COLOR");
				
				//teamNav = new Teams(teamNo, teamName, imgOriginal, teamColor);
			}
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get teamNavinfo(name, color, logo)");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return teamNav;
	}


	/** 특정 팀 (teamMain 페이지정보) 출력 DAO (teamMain 페이지 용)
	 * @param conn
	 * @param teamMain
	 * @return teamMain
	 */
	public Teams getTeamMainImg(Connection conn, String team) {
		Teams teamMainImg = null;
		System.out.println("==========================");
		System.out.println(team);
		System.out.println("==========================");
		try {
			String sql = prop.getProperty("getTeamMainImg");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, team);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				System.out.println("aaaaaaa");
				int teamNo = rs.getInt("TEAM_NO");
				String teamName = rs.getString("TEAM_NAME");
				String imgOriginal = rs.getString("IMG_ORIGINAL");
				
				//teamMainImg = new Teams(teamNo, teamName, imgOriginal);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get teamMainImg");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return teamMainImg;
	}

}
