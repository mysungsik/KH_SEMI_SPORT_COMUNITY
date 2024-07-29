package com.helpgpt.sports.news.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.news.model.vo.NewsImg;
import com.helpgpt.sports.profile.model.vo.LoginHistory;
import com.helpgpt.sports.teams.model.vo.Teams;

public class NewsDAO {
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public NewsDAO() {
		try {
			prop = new Properties();
			String defaultpath = "/com/helpgpt/sports/common/sqls/";
			String filepath = NewsDAO.class.getResource(defaultpath + "news-sql.xml").getPath();
			FileInputStream fis = new FileInputStream(filepath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.err.println("[ERROR] Load to news-sql.xml");
			e.printStackTrace();
		}
	}
	
	public News getNewsOne(Connection conn, int newsNum) {
		News newsInfo = null;
		
		try {
			String sql = prop.getProperty("getNewsOne");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, newsNum);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int newsNo = rs.getInt("NEWS_NO");
				int userNo = rs.getInt("USER_NO");
				String userName = rs.getString("USER_NAME");
				int teamNo = rs.getInt("TEAM_NO");
				String teamName = rs.getString("TEAM_NAME");
				String newsTitle = rs.getString("NEWS_TITLE");
				String newsPublisher = rs.getString("NEWS_PUBLISHER");
				String newsContent = rs.getString("NEWS_CONTENT");
				String createDt = rs.getTimestamp("CREATE_DT").toString();
				int newsViews = rs.getInt("NEWS_VIEWS");
				String newsStatus = rs.getString("NEWS_ST");
				String updateDt = rs.getTimestamp("UPDATE_DT") != null ? rs.getTimestamp("UPDATE_DT").toString() : "";
				
				newsInfo = new News(newsNo, userNo, userName, teamNo, teamName, newsTitle, 
						newsPublisher, newsContent, 
						createDt, newsViews, 
						newsStatus, updateDt);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get news one");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return newsInfo;
	}

	public News getNewsImgs(Connection conn, int newsNum, News newsInfo) {
		try {
			String sql = prop.getProperty("getNewsImgs");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, newsNum);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int newsNo = rs.getInt("NEWS_NO");
				String imgRename = rs.getString("IMG_RENAME");
				String imgOriginal = rs.getString("IMG_ORIGINAL");
				int imgLevel = rs.getInt("IMG_LEVEL");
				
				NewsImg img = new NewsImg(newsNo, imgRename, imgOriginal, imgLevel);
				
				newsInfo.addNewsImg(img);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get news imgs");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return newsInfo;
	}

	public List<News> getFilteredNews(Connection conn, String searchTerm, int searchTeamNo) {
		List<News> newsList = new ArrayList<>();
		
		try {
			String sqlBase = prop.getProperty("getFilteredNewsBase");
			String sql = "";
			if (searchTerm.equals("popular")) {
				sql = sqlBase + "ORDER BY N.NEWS_VIEWS DESC";
				pstmt = conn.prepareStatement(sql);
				
			}else if (searchTerm.equals("recent")){
				sql = sqlBase + "ORDER BY N.NEWS_NO DESC";
				pstmt = conn.prepareStatement(sql);
				
			} else if (searchTerm.equals("team")) {
				sql = sqlBase + "AND N.TEAM_NO = ? ORDER BY NEWS_NO DESC";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, searchTeamNo);
			}
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int newsNo = rs.getInt("NEWS_NO");
				int userNo = rs.getInt("USER_NO");
				String userName = rs.getString("USER_NAME");
				int teamNo = rs.getInt("TEAM_NO");
				String teamName = rs.getString("TEAM_NAME");
				String newsTitle = rs.getString("NEWS_TITLE");
				String newsPublisher = rs.getString("NEWS_PUBLISHER");
				String newsContent = rs.getString("NEWS_CONTENT");
				String createDt = rs.getTimestamp("CREATE_DT").toString();
				int newsViews = rs.getInt("NEWS_VIEWS");
				String newsStatus = rs.getString("NEWS_ST");
				String updateDt = rs.getTimestamp("UPDATE_DT") != null ? rs.getTimestamp("UPDATE_DT").toString() : "";
				String newsImg = rs.getString("NEWS_IMG") != null ? rs.getString("NEWS_IMG") : "";
				
				News newsInfo = new News(newsNo, userNo, userName, teamNo, teamName, newsTitle, 
						newsPublisher, newsContent, 
						createDt, newsViews, 
						newsStatus, updateDt, newsImg);
				
				newsList.add(newsInfo);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get news All");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return newsList;
	}

	public List<Teams> getAllTeams(Connection conn) {

		List<Teams> teams = new ArrayList<>();

		try {
			String sql = prop.getProperty("selectTeams");

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Teams team = new Teams();

				team.setTeamNo(rs.getInt(1));
				team.setTeamName(rs.getString(2));

				teams.add(team);
			}

		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get Teams All");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return teams;
	}

	public int modifyNews(Connection conn, News news) {
		int result = 0;
		
		try {
			String sql = prop.getProperty("modifyNews");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, news.getNewsTitle());
			pstmt.setInt(2, news.getTeamNo());
			pstmt.setString(3, news.getNewsPublisher());
			pstmt.setString(4, news.getNewsContent());
			pstmt.setInt(5, news.getNewsNo());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("[ERROR] Failed to modify news");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int modifyNewsImg(Connection conn, NewsImg image) {
		int result = 0;
		
		try {
			String sql = prop.getProperty("modifyNewsImg");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, image.getImgRename());
			pstmt.setString(2, image.getImgOriginal());
			pstmt.setInt(3, image.getNewsNo());
			pstmt.setInt(4, image.getImgLevel());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("[ERROR] Failed to modify news img");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertNews(Connection conn, News news) {
		int result = 0;
		
		try {
			String sql = prop.getProperty("insertNews");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, news.getUserNo());
			pstmt.setInt(2, news.getTeamNo());
			pstmt.setString(3, news.getNewsTitle());
			pstmt.setString(4, news.getNewsPublisher());
			pstmt.setString(5, news.getNewsContent());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("[ERROR] Failed to insert news");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int getLastNewsNum(Connection conn) {
		int lastNewsNum = 0;

		try {
			String sql = prop.getProperty("getLastNewsNum");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				lastNewsNum = rs.getInt("NEWS_NO");
			}

		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get Last news Num");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return lastNewsNum;
	}

	public int insertNewsImg(Connection conn, NewsImg image) {
		int result = 0;
		
		try {
			String sql = prop.getProperty("insertNewsImg");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, image.getImgRename());
			pstmt.setString(2, image.getImgOriginal());
			pstmt.setInt(3, image.getImgLevel());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("[ERROR] Failed to insert news img");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteNews(Connection conn, int newsNum) {
		int result = 0;
		
		try {
			String sql = prop.getProperty("deleteNews");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, newsNum);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("[ERROR] Failed to delete news");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateNewsView(Connection conn, int newsNum) {
		int result = 0;
		
		try {
			String sql = prop.getProperty("updateNewsView");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, newsNum);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("[ERROR] Failed to update news view");
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
}
