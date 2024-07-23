package com.helpgpt.sports.login.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;
import com.helpgpt.sports.login.model.vo.User;

public class UserDAO {
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public UserDAO() {
		String defaultpath = "/com/helpgpt/sports/common/sqls/";
		String filePath = UserDAO.class.getResource(defaultpath + "user-sql.xml").getPath();
		try {
			prop = new Properties();
			FileInputStream fis = new FileInputStream(filePath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Load user-sql file");
			e.printStackTrace();
		}
	}
	
	public User userLogin(Connection conn, User loginInfo) {
		String sql = prop.getProperty("user-login");
		User loginUser = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginInfo.getUserId());
			pstmt.setString(2, loginInfo.getUserPw());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int userNo = rs.getInt("USER_NO");
				int favoriteTeamNo = rs.getInt("TEAM_NO");
				String userId = rs.getString("USER_ID");
				String userEmail = rs.getString("USER_EMAIL");
				String userName = rs.getString("USER_NAME");
				String userPhone = rs.getString("USER_PHONE");
				String userSns = rs.getString("USER_SNS");
				String userBd = rs.getString("USER_BD");
				String userAddress = rs.getString("USER_ADDRESS");
				String userGender = rs.getString("USER_GENDER");
				String userNation = rs.getString("USER_NATION");
				String userProfileImg = rs.getString("USER_IMG_RENAME");
				String userAuthority = rs.getString("USER_AUTHORITY");
				String userState = rs.getString("USER_ST");
				int failCnt = rs.getInt("FAIL_CNT");
				String createdDate = rs.getString("CREATE_DT");
				String deletedDate = rs.getString("DELETE_DT");
				String agreeAddress = rs.getString("AGREE_ADDRESS");
				String agreeEmail = rs.getString("AGREE_EMAIL");
				String agreePhone = rs.getString("AGREE_PHONE");
				
				loginUser = new User(userNo, favoriteTeamNo, userId, 
						userProfileImg, userEmail, 
						userName, userPhone, userSns, userBd, 
						userAddress, userGender, userNation, 
						userProfileImg, userAuthority, userState, failCnt,
						createdDate, deletedDate,
						agreeAddress, agreeEmail, agreePhone);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Login");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginUser;
	}

	public int updateSessionUUID(Connection conn, int userNo, String sessionUUID) {
		String sql = prop.getProperty("update-sessionUUID");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sessionUUID);
			pstmt.setInt(2, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Update sessionUUID");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertUserHistory(Connection conn, int userNo, String isAuto) {
		String sql = prop.getProperty("insertUserHistory");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, isAuto);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Insert user history");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public User getLoginInfoFromSessionUUID(Connection conn, String sessionUUID) {
		String sql = prop.getProperty("getUserInfo-from-sessionUUID");
		User loginInfo = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sessionUUID);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {

				String userId = rs.getString("USER_ID");
				String userPw = rs.getString("USER_PW");
			
				loginInfo = new User(userId, userPw);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get loginInfo From sessionUUID");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginInfo;
	}

	public int updateUserInfo(Connection conn, int userNo, String inputType, String inputData) {
		
		String sql = "";
		int result = 0;
		
		String[] agreeType = {"AGREE_EMAIL", "AGREE_PHONE", "AGREE_ADDRESS"};
		List<String> agreeList = new ArrayList<>(Arrays.asList(agreeType));
		
		if (agreeList.contains(inputType)) {
			sql = String.format("UPDATE USER_POLICY "
					+ "SET %s = '%s'"
					+ "WHERE USER_NO = %d", inputType, inputData, userNo);
		}else {
			sql = String.format("UPDATE USER_INFO "
					+ "SET %s = '%s'"
					+ "WHERE USER_NO = %d", inputType, inputData, userNo);
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Update user info");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int passwordCheck(Connection conn, int userNo, String inputPw) {
		String sql = prop.getProperty("passwordCheck");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, inputPw);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Check User Password");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}

	public int resetFailCnt(Connection conn, int userNo) {
		String sql = prop.getProperty("resetFailCnt");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Reset Fail Count");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public User findUserbyId(Connection conn, String inputId) {
		String sql = prop.getProperty("findUserbyId");
		User userForFailCnt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputId);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int userNo = rs.getInt("USER_NO");
				String userId = rs.getString("USER_ID");
				int failCnt = rs.getInt("FAIL_CNT");
				
				userForFailCnt = new User(userNo, userId, failCnt);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Find User");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return userForFailCnt;
	}

	public int userLock(Connection conn, int userNo) {
		String sql = prop.getProperty("userLock");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to User Lock");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int addFailCnt(Connection conn, int userNo, int nowFailCnt) {
		String sql = prop.getProperty("addFailCnt");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nowFailCnt + 1);
			pstmt.setInt(2, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Add FailCnt");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteUserInfo(Connection conn) {
		String sql = "DELETE FROM USER_INFO WHERE DELETE_DT < SYSDATE - INTERVAL '7' DAY";
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to delete User Info");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}
