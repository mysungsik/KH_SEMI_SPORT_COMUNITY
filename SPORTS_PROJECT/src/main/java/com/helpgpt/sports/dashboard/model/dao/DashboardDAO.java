package com.helpgpt.sports.dashboard.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.profile.model.dao.ProfileDAO;

public class DashboardDAO {
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public DashboardDAO() {
		try {
			prop = new Properties();
			String defaultpath = "/com/helpgpt/sports/common/sqls/";
			String filepath = DashboardDAO.class.getResource(defaultpath + "dashboard-sql.xml").getPath();
			FileInputStream fis = new FileInputStream(filepath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.err.println("[ERROR] Load to sql");
			e.printStackTrace();
		}
	}

	
	public List<Community> getDashboardCommunity(Connection conn, int commType, int limit) {
		List<Community> boardList = new ArrayList<>();

		try {
			String sql = prop.getProperty("selectDashboardBoardList");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, commType);
			pstmt.setInt(2, limit);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Community board = new Community();
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));
				board.setBoardComent(rs.getInt("REPLY_COUNT"));
				board.setBoardLike(rs.getInt("LIKE_COUNT"));

				if (commType == 3) {
					board.setBoardCategory(rs.getString("TEAM_NAME"));
				} else {
					board.setBoardCategory(rs.getString("TYPE_NAME"));
				}

				boardList.add(board);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("[ERROR] Failed to select Board");
		} finally {
			close(rs);
			close(pstmt);
		}

		return boardList;
	}

}
