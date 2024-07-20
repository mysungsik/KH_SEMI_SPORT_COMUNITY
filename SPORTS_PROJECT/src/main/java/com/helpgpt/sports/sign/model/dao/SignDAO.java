package com.helpgpt.sports.sign.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;
import com.helpgpt.sports.login.model.vo.User;

public class SignDAO {
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public SignDAO() {
		String defaultpath = "/com/helpgpt/sports/common/sqls/";
		String filePath = SignDAO.class.getResource(defaultpath + "sign-sql.xml").getPath();
		try {
			prop = new Properties();
			FileInputStream fis = new FileInputStream(filePath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Load signup-sql file");
			e.printStackTrace();
		}
	}

	public int signup(Connection conn, User signupInfo) {
		String sql = prop.getProperty("user-signup");
		int result = 0;

		String userId = signupInfo.getUserId();
		String userPw = signupInfo.getUserPw();
		String userEmail = signupInfo.getUserEmail();
		String userName = signupInfo.getUserName();
		String userPhone = signupInfo.getUserPhone();
		String userBd = signupInfo.getUserBd();
		String userAddress = signupInfo.getUserAddress();
		String userGender = signupInfo.getUserGender();
		String userNation = signupInfo.getUserNation();

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			pstmt.setString(3, userEmail);
			pstmt.setString(4, userName);
			pstmt.setString(5, userPhone);
			pstmt.setString(6, userBd);
			pstmt.setString(7, userAddress);
			pstmt.setString(8, userGender);
			pstmt.setString(9, userNation);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[ERROR] Failed to signup");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int emailDupCheck(Connection conn, User signupInfo) {
		String sql = prop.getProperty("emailDupCheck");
		int result = 0;

		String userEmail = signupInfo.getUserEmail();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userEmail);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("[ERROR] Failed to Email Duplication Check");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int idDupCheck(Connection conn, User signupInfo) {
		String sql = prop.getProperty("idDupCheck");
		int result = 0;

		String userId = signupInfo.getUserId();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("[ERROR] Failed to ID Duplication Check");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int createUserPolicy(Connection conn) {
		int result = 0;
		
		String sql = prop.getProperty("create-user-policy");

		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[ERROR] Failed to create policy");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int createSessionUUID(Connection conn) {
		int result = 0;
		
		String sql = prop.getProperty("create_user_session");

		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[ERROR] Failed to create session UUID");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int userResign(Connection conn, int userNo) {
		String sql = prop.getProperty("userResign");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Resign User");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int cancelUserResign(Connection conn, int userNo) {
		String sql = prop.getProperty("cancelUserResign");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Cancel Resign User");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
}
