package com.helpgpt.sports.community.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.community.model.dao.CommunityDAO;
import com.helpgpt.sports.community.model.vo.Board;

public class CommunityService {
	
	CommunityDAO dao = new CommunityDAO();

	public List<Board> selectBoardList(int type) throws Exception{
		
		Connection conn = getConnection();
		
		List<Board> boardList = dao.selectBoardList(conn, type);
		
		System.out.println("service : " + boardList);
		
		return boardList;
	}



}
