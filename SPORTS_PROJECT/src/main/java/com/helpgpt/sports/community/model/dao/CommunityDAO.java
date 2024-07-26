package com.helpgpt.sports.community.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.community.model.vo.CommunityImage;
import com.helpgpt.sports.reply.model.vo.Reply;
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
	public List<Community> selectBoardList(Connection conn, int type) {
		List<Community> boardList = new ArrayList<>();

		try {
			String sql = prop.getProperty("selectBoardList");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, type);
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
	public Community selectBoardDetail(Connection conn, int boardNo) {
		Community board = null;

		try {
			String sql = prop.getProperty("selectBoardDetail");

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, boardNo);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new Community();
				board.setBoardContent(rs.getString("COMM_CONTENT"));
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				if(rs.getString("TYPE_NAME").equals("응원")) {
					board.setBoardCategory(rs.getString("TEAM_NAME"));
				}else {
					board.setBoardCategory(rs.getString("TYPE_NAME"));
				}
				

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
	public List<Community> selectBoardListAll(Connection conn, int type) {
		List<Community> boardList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectBoardListAll");
			pstmt = conn.prepareStatement(sql);
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
	public List<Community> selectTeamBoardList(Connection conn, int teamNo) {
		List<Community> boardList = new ArrayList<>();

		try {
			String sql = prop.getProperty("selectTeamBoardList");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, teamNo);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Community board = new Community();
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));
				board.setBoardCategory(rs.getString("TEAM_NAME"));
				board.setBoardComent(rs.getInt("REPLY_COUNT"));
				board.setBoardLike(rs.getInt("LIKE_COUNT"));

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

	public List<Reply> selectReplyList(Connection conn, int boardNo) {
		List<Reply> replyList = new ArrayList<>();

		try {
			String sql = prop.getProperty("selectReplyList");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rs = pstmt.executeQuery();
			

			while (rs.next()) {
				Reply reply = new Reply();
				reply.setUserName(rs.getString("USER_NAME"));
				reply.setReplyContent(rs.getString("REPLY_CONTENT"));
				reply.setReplyDt(rs.getString("REPLY_DT"));

				replyList.add(reply);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("[ERROR] Failed to select Board");
		} finally {
			close(rs);
			close(pstmt);
		}

		return replyList;
	}

	/** 게시글 등록
	 * @param conn
	 * @param board
	 * @return
	 */
	public int insertBoard(Connection conn, Community board) {
		
		int result = 0;
		
		
		try {
			String sql = prop.getProperty("insertBoard");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getUserNo());
			pstmt.setInt(2, board.getTypeNo());
			if(board.getTypeNo() == 3) {
				pstmt.setInt(3, board.getTeamNo());
			}else {
				pstmt.setString(3, null);
			}
			pstmt.setString(4, board.getBoardTitle());
			pstmt.setString(5, board.getBoardContent());
			
			result = pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public int selectCurrentNo(Connection conn) {
		
		int boardNo = 0;
		
		try {
			String sql = prop.getProperty("selectCurrentNo");
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardNo = rs.getInt(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return boardNo;
	}

	public int insertImage(Connection conn, CommunityImage image) {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("insertImage");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, image.getBoardNo());
			pstmt.setString(2, image.getImageRename());
			pstmt.setString(3, image.getImageOriginal());
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		
		return result;
	}

	/** 이미지 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return
	 */
	public String selectBoardImage(Connection conn, int boardNo) {
		
		String image = "";
		
		try {
			String sql = prop.getProperty("selectBoardImage");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				image = rs.getString("IMG_RENAME");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}
		
		return image;
	}

	
	/** 메인 페이지(공지, 자유, 응원)
	 * @param conn
	 * @return
	 */
	public Map<String, List<Community>> selectMainPage(Connection conn) {
	    Map<String, List<Community>> map = new HashMap<>();
	    pstmt = null;
	    rs = null;
	    
	    try {
	        for (int i = 1; i < 4; i++) {
	            List<Community> boardList = new ArrayList<>();
	            String sql = prop.getProperty("selectMainPage");

	            pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, i);
	            rs = pstmt.executeQuery();

	            while (rs.next()) {
	                Community board = new Community();
	                board.setBoardNo(rs.getInt("COMM_NO"));
	                board.setBoardTitle(rs.getString("COMM_TITLE"));
	                board.setBoardAuthor(rs.getString("USER_NAME"));
	                board.setBoardCreateDate(rs.getString("CREATE_DT"));
	                board.setBoardViews(rs.getInt("COMM_VIEWS"));
					board.setBoardComent(rs.getInt("REPLY_COUNT"));
					board.setBoardLike(rs.getInt("LIKE_COUNT"));
	                if (i == 3) {
	                    board.setBoardCategory(rs.getString("TEAM_NAME"));
	                } else {
	                    board.setBoardCategory(rs.getString("TYPE_NAME"));
	                }

	                boardList.add(board);
	            }
	            
	            map.put("type" + i , boardList);

	            try {
	                close(rs);
	                close(pstmt);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }

	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // Print stack trace for debugging
	    } finally {
	        // Close resources if they are still open
	            close(rs);
	            close(pstmt);
	    }

	    return map;
	}

	/** 메인 페이지(전체)
	 * @param conn
	 * @return
	 */
	public List<Community> selectMainPageAll(Connection conn) {
		
		List<Community> allList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectMainPageAll");
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
            while (rs.next()) {
                Community board = new Community();
                board.setBoardNo(rs.getInt("COMM_NO"));
                board.setBoardTitle(rs.getString("COMM_TITLE"));
                board.setBoardAuthor(rs.getString("USER_NAME"));
                board.setBoardCreateDate(rs.getString("CREATE_DT"));
                board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardComent(rs.getInt("REPLY_COUNT"));
				board.setBoardLike(rs.getInt("LIKE_COUNT"));
                if (rs.getInt("COMM_TYPE") == 3) {
                    board.setBoardCategory(rs.getString("TEAM_NAME"));
                } else {
                    board.setBoardCategory(rs.getString("TYPE_NAME"));
                }

                allList.add(board);
            }
			
		}catch(Exception e) {
			
		}finally {
			close(rs);
			close(pstmt);
			
		}
		return allList;
	}

	/** 게시글 삭제
	 * @param conn
	 * @param boardNo
	 * @return
	 */
	public int deleteBoard(Connection conn, int boardNo) {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("deleteBoard");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 인기 게시판 조회
	 * @param conn
	 * @return
	 */
	public List<Community> selectPopularBoardList(Connection conn) {
		
		List<Community> boardList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectPopularBoardList");
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Community board = new Community();
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardContent(rs.getString("COMM_CONTENT"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));
				board.setBoardComent(rs.getInt("REPLY_COUNT"));
				board.setBoardLike(rs.getInt("LIKE_COUNT"));

				if (rs.getInt("COMM_TYPE") == 3) {
					board.setBoardCategory(rs.getString("TEAM_NAME"));
				} else {
					board.setBoardCategory(rs.getString("TYPE_NAME"));
				}

				boardList.add(board);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		
		return boardList;
	}

	/** 베스트 댓글 조회
	 * @param conn
	 * @return
	 */
	public List<Community> selectBestReply(Connection conn) {
		
		List<Community> bestReply = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectBestReply");
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Community board = new Community();
				
				board.setBoardCategory(rs.getString("TYPE_NAME"));
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setUserImage(rs.getString("USER_IMG_RENAME"));
				board.setBoardContent(rs.getString("REPLY_CONTENT"));
				board.setBoardLike(rs.getInt("REPLY_LIKE_COUNT"));
				
				bestReply.add(board);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return bestReply;
	}

	public List<Community> searchBoard(Connection conn, String category, String searchInput) {
		
		List<Community> boardList = new ArrayList<>();

		
		String sql = prop.getProperty("searchBoard") + "AND " + category + " LIKE '%" + searchInput + "%' ORDER BY C.COMM_NO DESC";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Community board = new Community();
				
				board.setBoardTitle(rs.getString("COMM_TITLE"));
				board.setBoardAuthor(rs.getString("USER_NAME"));
				board.setBoardCreateDate(rs.getString("CREATE_DT"));
				board.setBoardViews(rs.getInt("COMM_VIEWS"));
				board.setBoardNo(rs.getInt("COMM_NO"));
				board.setBoardComent(rs.getInt("REPLY_COUNT"));
				board.setBoardLike(rs.getInt("LIKE_COUNT"));

				if (rs.getInt("COMM_TYPE") == 3) {
					board.setBoardCategory(rs.getString("TEAM_NAME"));
				} else {
					board.setBoardCategory(rs.getString("TYPE_NAME"));
				}

				boardList.add(board);
				
				
			}
		}catch(Exception e) {
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return boardList;
	}

	

	




}
