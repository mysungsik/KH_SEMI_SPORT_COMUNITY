package com.helpgpt.sports.profile.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.profile.model.vo.LoginHistory;
import com.helpgpt.sports.reply.model.vo.Reply;

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

	public int resetUserProfileImg(Connection conn, int userNo, String defaultFilePath) {
		String sql = prop.getProperty("resetUserProfileImg");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, defaultFilePath);
			pstmt.setInt(2, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Reset User Profile Img");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public List<Reply> getMycomments(Connection conn, int userNo) {
		List<Reply> replyList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getMycomments");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int replyNo = rs.getInt("REPLY_NO");
				String userName = rs.getString("USER_NAME");
				String userProfileImg = rs.getString("USER_IMG_RENAME") != null ? rs.getString("USER_IMG_RENAME") : "";
				int replyTypeNo = rs.getInt("REPLY_TYPE_NO");
				String replyTypeName = rs.getString("REPLY_TYPE");
				int replyTargetNo = rs.getInt("REPLY_TARGET_NO");
				String replyTargetTitle = rs.getString("TARGET_TITLE");
				String replyDt = rs.getTimestamp("REPLY_DT").toString();
				String replyContent = rs.getString("REPLY_CONTENT");
				String replyStatus = rs.getString("REPLY_ST");
				
				Reply reply = new Reply(replyNo, 
						userNo, userName, userProfileImg,
						replyTypeNo, replyTargetTitle, replyTypeName, 
						replyTargetNo,
						replyDt, 
						replyContent, 
						replyStatus);
				
				replyList.add(reply);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get my Replies");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return replyList;
	}

	public List<Community> getMyCommunity(Connection conn, int userNo) {
		List<Community> commList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getMyCommunity");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int commNo = rs.getInt("COMM_NO");
				String commTitle = rs.getString("COMM_TITLE");
				String typeName = rs.getString("TYPE_NAME");
				
		
				Community comm = new Community(commNo, commTitle, typeName);
				
				commList.add(comm);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get my boards");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return commList;
	}

	public List<News> getMyNewsLiked(Connection conn, int userNo) {
		List<News> newsList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getMyNewsLiked");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int newsNo = rs.getInt("NEWS_NO");
				String newsTitle = rs.getString("NEWS_TITLE");
				String newsContent = rs.getString("NEWS_CONTENT");
				String teamName = rs.getString("TEAM_NAME");
				
		
				News news = new News(newsNo, newsTitle,newsContent, teamName);
				
				newsList.add(news);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get my boards");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return newsList;
	}

}
