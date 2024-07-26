package com.helpgpt.sports.teams.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.teams.model.dao.TeamsDAO;
import com.helpgpt.sports.teams.model.vo.Teams;

public class TeamsService {
	TeamsDAO dao = new TeamsDAO();

	/** 팀 정보(이름, 색깔, 로고) 출력 service
	 * @param teamName
	 * @return teamsList
	 */
	public List<Teams> getTeamsList() {
		
		Connection conn = getConnection();
		
		List<Teams> teamsList = dao.getTeamsList(conn);
		
		close(conn);
		
		return teamsList;
		
	}

	/** 특정 팀 정보(로고, 색깔 이름) 출력 service
	 * @param team
	 * @return teamNav
	 */
	public Teams getTeamNav(String team) {
		
		Connection conn = getConnection();
		
		Teams teamNav = dao.getTeamNav(conn, team);
		
		close(conn);
		
		return teamNav;
	}

	/** 특정 팀 정보(로고, 색깔 이름) 출력 service
	 * @param team
	 * @return teamMain
	 */
	public Teams getTeamMainImg(String team) {
		
		Connection conn = getConnection();
		
		Teams teamMainImg = dao.getTeamMainImg(conn, team);
		
		close(conn);
		
		return teamMainImg;
	}
	
	
}
