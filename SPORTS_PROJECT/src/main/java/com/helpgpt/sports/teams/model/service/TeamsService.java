package com.helpgpt.sports.teams.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.teams.model.dao.TeamsDAO;
import com.helpgpt.sports.teams.model.vo.Teams;

public class TeamsService {
	TeamsDAO dao = new TeamsDAO();

	/** 팀 정보(이름, 색깔, 로고) 출력 service
	 * @param teamNo
	 * @return teamsList
	 */
	public List<Teams> selectTeamsList(int teamNo) {
		
		Connection conn = getConnection();
		
		List<Teams> teamsList = dao.selectTeamsList(conn, teamNo);
		
		close(conn);
		
		return teamsList;
		
	}
	
	
}