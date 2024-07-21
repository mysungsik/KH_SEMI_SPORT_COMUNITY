package com.helpgpt.sports.profile.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.profile.model.vo.LoginHistory;

public class ProfileDAO {
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public ProfileDAO() {
		try {
			prop = new Properties();
			String defaultpath = "/com/helpgpt/sports/common/sqls/";
			String filepath = ProfileDAO.class.getResource(defaultpath + "profile-sql.xml").getPath();
			FileInputStream fis = new FileInputStream(filepath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.err.println("[ERROR] Load to sql");
			e.printStackTrace();
		}
	}

	public List<LoginHistory> getUserHistory(Connection conn, int loginUserNo) {
		List<LoginHistory> historyList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectUserHistories");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, loginUserNo);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int historyNo = rs.getInt("HISTORY_NO");
				int userNo = rs.getInt("USER_NO");
				String loginDate = rs.getTimestamp("LOGIN_DT").toString();
				String loginAuto = rs.getString("LOGIN_AUTO");
				
				LoginHistory history = new LoginHistory(historyNo, userNo, loginDate, loginAuto);
				
				historyList.add(history);
			}
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get user login histories");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return historyList;
	}

	public int changeUserProfileImg(Connection conn, int userNo, String originalFileName, String renamedFile) {
		String sql = prop.getProperty("changeUserProfileImg");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, originalFileName);
			pstmt.setString(2, renamedFile);
			pstmt.setInt(3, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Update User Profile Img");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
