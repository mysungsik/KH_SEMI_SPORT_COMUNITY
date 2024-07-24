package com.helpgpt.sports.community.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.community.model.vo.Board;
import com.helpgpt.sports.teams.model.vo.Teams;

public class CommunityDAO {

	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;

	public CommunityDAO() {
		String defaultpath = "/com/helpgpt/sports/common/sqls/";
		String filePath = CommunityDAO.class.getResource(defaultpath + "community-sql.xml").getPath();
		try {
			prop = new Properties();
			FileInputStream fis = new FileInputStream(filePath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to Load community-sql file");
			e.printStackTrace();
		}
	}

	/**
	 * 타입별 게시글 목록 조회 DAO
	 * 
	 * @param conn
	 * @param type
	 * @return
	 */
	public List<Board> selectBoardList(Connection conn, int type) {
		List<Board> boardList = new ArrayList<>();

		try {
			String sql = prop.getProperty("selectBoardList");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, type);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Board board = new Board();
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));

				if (type == 3) {
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

	/**
	 * 게시글 상세 조회 DAO
	 * 
	 * @param conn
	 * @param boardNo
	 * @return
	 */
	public Board selectBoardDetail(Connection conn, int boardNo) {
		Board board = null;

		try {
			String sql = prop.getProperty("selectBoardDetail");

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, boardNo);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new Board();
				board.setBoardContent(rs.getString("COMM_CONTENT"));
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardCategory(rs.getString("TYPE_NAME"));

			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("[ERROR] Failed to select Board");
		} finally {
			close(rs);
			close(pstmt);
		}

		return board;
	}

	/**
	 * 게시글 목록 전체 조회DAO
	 * 
	 * @param conn
	 * @return
	 */
	public List<Board> selectBoardListAll(Connection conn, int type) {
		List<Board> boardList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectBoardListAll");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Board board = new Board();
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));

				if (rs.getInt("COMM_TYPE") == 3) {
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

	/**
	 * teams 조회 DAO
	 * 
	 * @param conn
	 * @return
	 */
	public List<Teams> selectTeams(Connection conn) {

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
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return teams;
	}

	/**
	 * 팀별 게시글 목록 DAO
	 * 
	 * @param conn
	 * @param teamNo
	 * @return
	 */
	public List<Board> selectTeamBoardList(Connection conn, int teamNo) {
		List<Board> boardList = new ArrayList<>();

		try {
			String sql = prop.getProperty("selectTeamBoardList");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, teamNo);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Board board = new Board();
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));
				board.setBoardCategory(rs.getString("TEAM_NAME"));

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
