package com.helpgpt.sports.findInfo.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import com.helpgpt.sports.login.model.dao.UserDAO;

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
	
	public int updateUserPw(Connection conn, String inputId, String inputEmail, String inputPw) {
		String sql = prop.getProperty("updateUserPw");
		int result = 0;
		
		System.out.println(inputId);
		System.out.println(inputEmail);
		System.out.println(inputPw);
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputPw);
			pstmt.setString(2, inputId);
			pstmt.setString(3, inputEmail);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Update user Pw");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
}
