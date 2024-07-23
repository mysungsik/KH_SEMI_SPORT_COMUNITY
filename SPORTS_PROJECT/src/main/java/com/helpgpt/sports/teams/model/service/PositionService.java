package com.helpgpt.sports.teams.model.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.helpgpt.sports.teams.model.dao.PositionDAO;
import com.helpgpt.sports.teams.model.vo.Player;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

public class PositionService {
	private PositionDAO dao = new PositionDAO();

	/** 포지션 목록 조회 Service
	 * @param type
	 * @return map
	 * @throws Exception
	 */
//	public Map<String, Object> selectPosition(int type) throws Exception{
//		
//		Connection conn = getConnection();
//		
//		// 1. 포지션 이름 조회 DAO 호출
//		String positionName = dao.selectPositionName(conn, type);
//		
//		// 2. 특정 포지션 전체 선수 조회 DAO 호출(받아야 할 것 : teamNo,positionNO)
//		List<Player> playerList= dao.selectPosition(conn, type);
//		
//		
//		close(conn);
//		return map;
//	}
	
}
