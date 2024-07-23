package com.helpgpt.sports.findInfo.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import com.helpgpt.sports.login.model.dao.UserDAO;
import com.helpgpt.sports.login.model.vo.User;

public class UpdateInfoDAO {
	Properties prop = new Properties();
	ResultSet rs;
	PreparedStatement pstmt;

	
	public UpdateInfoDAO() {
		String defaultpath = "/com/helpgpt/sports/common/sqls/";
		String filePath = UserDAO.class.getResource(defaultpath + "updateinfo-sql.xml").getPath();
		
		try {
			prop = new Properties();
			FileInputStream fis = new FileInputStream(filePath);
			prop.loadFromXML(fis);
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Load updateinfo-sql file");
			e.printStackTrace();
		}		
	}
	
	public int mailCheck(Connection conn, int userNo, String inputMailAuth) {
		String sql = prop.getProperty("userMailCheck");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, inputMailAuth);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Mail Check");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
	
	public int resetUserPw(Connection conn, int userNo) {
		String sql = prop.getProperty("resetUserPw");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to reset user Pw");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
}
