package com.helpgpt.sports.community.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.helpgpt.sports.community.model.dao.CommunityDAO;
import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.community.model.vo.CommunityImage;
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






}
