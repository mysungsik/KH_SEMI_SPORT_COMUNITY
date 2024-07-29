package com.helpgpt.sports.teams.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
		String defaultpath = "/com/helpgpt/sports/common/sqls/";
		String filepath = TeamsDAO.class.getResource(defaultpath + "teams-sql.xml").getPath();
		try {
			prop = new Properties();
			FileInputStream fis = new FileInputStream(filepath);
			prop.loadFromXML(fis);
			
		} catch (Exception e) {
			System.err.println("[ERROR]Failed to Load teams-sql file");
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
				String imgOriginal2 = rs.getString("IMG_ORIGINAL2");
				String imgOriginal3 = rs.getString("IMG_ORIGINAL3");
				String imgOriginal4 = rs.getString("IMG_ORIGINAL4");
				
				Teams team = new Teams(teamNo, stadiumNo, teamName, teamLeader, director, sponsor, teamRegion, teamDes, teamStatus, videoUrl, teamColor, imgOriginal1, imgOriginal2, imgOriginal3, imgOriginal4);
				teamsList.add(team);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get teamInfo");
			e.printStackTrace();
		}finally {
			close(rs);
			close(stmt);
		}
		
		return teamsList;
	}

	
	/** 특정 팀 정보 출력
	 * @param conn
	 * @param team
	 * @return oneTeam
	 */
	public Teams getOneTeam(Connection conn, String team) {
		Teams oneTeam = null;
		try {
			String sql = prop.getProperty("getOneTeam");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, team);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
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
				String imgDes1 = rs.getString("IMG_DES1");
				String imgOriginal2 = rs.getString("IMG_ORIGINAL2");
				String imgDes2 = rs.getString("IMG_DES2");
				String imgOriginal3 = rs.getString("IMG_ORIGINAL3");
				String imgOriginal4 = rs.getString("IMG_ORIGINAL4");

				if(imgOriginal1 == null ) {
					imgOriginal1="/public/images/profile/user_img1.jpg";
				} 
				
				if(imgOriginal2 == null ) {
					imgOriginal2="/public/images/profile/user_img1.jpg";
				} 
				
				if(imgOriginal3 == null ) {
					imgOriginal3="/public/images/profile/user_img1.jpg";
				} 
				
				if(imgOriginal4 == null ) {
					imgOriginal4="/public/images/profile/user_img1.jpg";
				} 
				
				oneTeam = new Teams(teamNo, stadiumNo, teamName, teamLeader, director, sponsor, teamRegion, teamDes, teamStatus, videoUrl, teamColor, imgOriginal1, imgDes1, imgOriginal2, imgDes2, imgOriginal3, imgOriginal4);
				
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get OneTeamInfo in DAO");
			e.printStackTrace();
			
		}finally {
			close(rs);
			close(pstmt);
		}
		return oneTeam;
	}


	/** 팀 추가 DAO
	 * @param addTeamInfo
	 * @param conn
	 * @return result
	 */
	public int addTeam(Teams addTeamInfo, Connection conn) {
		String sql = prop.getProperty("addTeam");
		int result = 0;

		String teamName = addTeamInfo.getTeamName();
		String teamLeader = addTeamInfo.getTeamLeader();
		String director = addTeamInfo.getDirector();
		String sponsor = addTeamInfo.getSponsor();
		String teamRegion = addTeamInfo.getTeamRegion();
		String teamDes = addTeamInfo.getTeamDescription();
		String videoUrl = addTeamInfo.getVideoUrl();
		String teamColor = addTeamInfo.getTeamColor();
		
		String imgOriginal1 = addTeamInfo.getImgOriginal1();
		String imgDescription1 = addTeamInfo.getImgDescription1();
		String imgOriginal2 = addTeamInfo.getImgOriginal2();
		String imgDescription2 = addTeamInfo.getImgDescription2();
		
		String imgOriginal3 = addTeamInfo.getImgOriginal3();
		String imgOriginal4 = addTeamInfo.getImgOriginal4();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, teamName);
			pstmt.setString(2, teamLeader);
			pstmt.setString(3, director);
			pstmt.setString(4, sponsor);
			pstmt.setString(5, teamRegion);
			pstmt.setString(6, teamDes);
			pstmt.setString(7, videoUrl);
			pstmt.setString(8, teamColor);
			
			pstmt.setString(9, imgOriginal1);
			pstmt.setString(10, imgDescription1);
			pstmt.setString(11, imgOriginal2);
			pstmt.setString(12, imgDescription2);
			pstmt.setString(13, imgOriginal3);
			pstmt.setString(14, imgOriginal4);
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			System.out.println("[Error] Failed to add Team");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}



}
