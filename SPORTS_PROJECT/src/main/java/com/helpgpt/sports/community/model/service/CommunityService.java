package com.helpgpt.sports.community.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.helpgpt.sports.community.controller.communityController;
import com.helpgpt.sports.community.model.dao.CommunityDAO;
import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.community.model.vo.CommunityImage;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.reply.model.vo.Reply;
import com.helpgpt.sports.teams.model.vo.Teams;

public class CommunityService {
	
	CommunityDAO dao = new CommunityDAO();

	public List<Community> selectBoardList(int type, int teamNo){
		
		Connection conn = getConnection();
		
		List<Community> boardList = new ArrayList<>();
		
		switch(type) {
		case 1: case 2: boardList =	dao.selectBoardList(conn, type); break;
		case 3: boardList = dao.selectTeamBoardList(conn, teamNo); break;
		case 4: boardList = dao.selectPopularBoardList(conn); break;
		case 0: boardList = dao.selectBoardListAll(conn, type); break;
		}
			
		
		return boardList;
	}

	public Community selectBoardDetail(int boardNo) {
		
		Connection conn = getConnection();
		
		Community board = dao.selectBoardDetail(conn, boardNo);
		
		close(conn);
		
		return board;
	}
	
	public String selectBoardImage(int boardNo) {
		
		Connection conn = getConnection();
		
		String image = dao.selectBoardImage(conn, boardNo);
		
		close(conn);
		
		return image;
	}

	/** teams 조회 Service
	 * @return teams
	 */
	public List<Teams> selectTeams() {
		
		Connection conn = getConnection();
		
		List<Teams> teams = dao.selectTeams(conn);
		
		close(conn);
		
		return teams;
	}

	/** 댓글 조회 service
	 * @param boardNo
	 * @return 
	 */
	public List<Reply> selectReplyList(int boardNo) {
		
		Connection conn = getConnection();
		
		List<Reply> replyList = dao.selectReplyList(conn, boardNo);
		
		
		close(conn);
		
		return replyList;
	}

	/** 게시글 삽입
	 * @param board
	 * @return
	 */
	public int insertBoard(Community board) {
		
		Connection conn = getConnection();
		
		int result = dao.insertBoard(conn, board);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int selectCurrentNo() {
		
		Connection conn = getConnection();
		
		int boardNo = dao.selectCurrentNo(conn);
		
		close(conn);
		
		return boardNo;
	}

	/** 이미지 삽입 Service
	 * @param image
	 * @return
	 */
	public int insertImage(CommunityImage image) {
		
		Connection conn = getConnection();
		
		int result = dao.insertImage(conn, image);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 메인 페이지 정보 조회
	 * @return
	 */
	public Map<String, List<Community>> selectMainPage() {
		
		Connection conn = getConnection();
		
		Map<String, List<Community>> map = dao.selectMainPage(conn);
		List<Community> allList = dao.selectMainPageAll(conn);
		List<Community> popularList = dao.selectPopularBoardList(conn);
		List<Community> bestReply = dao.selectBestReply(conn);
		
		map.put("type4", popularList);
		map.put("type0", allList);
		map.put("bestReply", bestReply);
		
		close(conn);
		
		return map;
	}

	/** 게시글 삭제
	 * @param boardNo
	 * @return
	 */
	public int deleteBoard(int boardNo) {
		
		Connection conn = getConnection();
		
		int result = dao.deleteBoard(conn, boardNo);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 게시글 검색
	 * @param category
	 * @param searchInput
	 * @return
	 */
	public List<Community> searchBoard(String category, String searchInput) {
		
		Connection conn = getConnection();
		
		List<Community> boardList = boardList = dao.searchBoard(conn, category, searchInput); 
		
		close(conn);
		
		return boardList;
	}

	/** 게시글 수정
	 * @param board
	 * @return
	 */
	public int updateBoard(Community board) {
		
		Connection conn = getConnection();
		
		int result = dao.updateBoard(conn, board);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 게시글 이미지 수정
	 * @param image
	 * @return
	 */
	public int updateImage(CommunityImage image) {
		
		Connection conn = getConnection();
		
		int result = dao.updateImage(conn, image);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}
	
	






}
