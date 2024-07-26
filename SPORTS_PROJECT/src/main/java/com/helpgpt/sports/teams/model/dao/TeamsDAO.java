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

import com.helpgpt.sports.profile.model.dao.ProfileDAO;
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

	
	/** 팀 정보(이름, 색깔, 로고) 출력 dao
	 * @param conn
	 * @param teamNo
	 * @return teamsList
	 */
	public List<Teams> getTeamsList(Connection conn) {
		List<Teams> teamsList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getTeamsList");
			stmt = conn.createStatement();
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				int teamNo = rs.getInt("TEAM_NO");
				String teamName = rs.getString("TEAM_NAME");
				String imgOriginal = rs.getString("IMG_ORIGINAL");
				String teamColor = rs.getString("TEAM_COLOR");
				
				if (imgOriginal == null) {
					continue;
				}
				
				Teams teams = new Teams(teamNo, teamName, imgOriginal, teamColor);
				
				teamsList.add(teams);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] FAILED to get team info(name, color, logo)");
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
				
				teamNav = new Teams(teamNo, teamName, imgOriginal, teamColor);
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
				
				teamMainImg = new Teams(teamNo, teamName, imgOriginal);
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
