package com.helpgpt.sports.teams.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.teams.model.dao.TeamsDAO;
import com.helpgpt.sports.teams.model.vo.Teams;

public class TeamsService {
	TeamsDAO dao = new TeamsDAO();

	/** 모튼 팀 정보 출력 service
	 * @return teamsList
	 */
	public List<Teams> getTeamsAll() {
		
		Connection conn = getConnection();
		
		List<Teams> teamsList = dao.getTeamsAll(conn);
		
		close(conn);
		
		return teamsList;
		
	}
	
	
	/** 특정 팀 출력
	 * @param team
	 * @return oneTeam
	 */
	public Teams getOneTeam(String team) {
		Connection conn = getConnection();
		
		Teams oneTeam = dao.getOneTeam(conn, team);
		
		close(conn);
		
		return oneTeam;
	}

	/** 팀 추가 service
	 * @param addTeamInfo
	 * @return result
	 */
	public int addTeam(Teams addTeamInfo) {
		Connection conn = getConnection();
		
		int result = dao.addTeam(addTeamInfo, conn);
		
		if(result > 0)	commit(conn);
		else 			rollback(conn);
		
		close(conn);
		return result;
	}


	
	
}
