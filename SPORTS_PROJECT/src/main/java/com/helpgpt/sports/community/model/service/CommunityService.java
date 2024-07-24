package com.helpgpt.sports.community.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.helpgpt.sports.community.model.dao.CommunityDAO;
import com.helpgpt.sports.community.model.vo.Board;
import com.helpgpt.sports.teams.model.vo.Teams;

public class CommunityService {
	
	CommunityDAO dao = new CommunityDAO();

	public List<Board> selectBoardList(int type, int teamNo){
		
		Connection conn = getConnection();
		
		List<Board> boardList = new ArrayList<>();
		
		switch(type) {
		case 1: case 2: boardList =	dao.selectBoardList(conn, type); break;
		case 3: boardList = dao.selectTeamBoardList(conn, teamNo); break;
		case 0: boardList = dao.selectBoardListAll(conn, type); break;
		}
			
		
		return boardList;
	}

	public Board selectBoardDetail(String sub) {
		
		int boardNo = Integer.parseInt(sub);
		
		Connection conn = getConnection();
		
		Board board = dao.selectBoardDetail(conn, boardNo);
		
		close(conn);
		
		return board;
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




}
