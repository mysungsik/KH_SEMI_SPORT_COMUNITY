package com.helpgpt.sports.teams.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.teams.model.dao.PlayerDAO;
import com.helpgpt.sports.teams.model.vo.Player;
import com.helpgpt.sports.teams.model.vo.Teams;

public class PlayerService {
	PlayerDAO dao = new PlayerDAO();

	/** 특정 팀 플레이어 모음 가져오는 서비스
	 * @param team
	 * @return
	 */
	public List<Player> getPlayers(String team) {
		
		
		Connection conn = getConnection();
		
		List<Player> playerList = dao.getPlayers(conn, team);
		
		close(conn);
		
		return playerList;
	}

	/** 특정 팀 포지션 플레이어 모음 가져오는 서비스
	 * @param team
	 * @param positionNo
	 * @return
	 */
	public List<Player> getPlayerPosition(String team, int positionNo) {
Connection conn = getConnection();
		
		List<Player> playerList = dao.getPlayerPosition(conn, team, positionNo);
		
		close(conn);
		
		return playerList;
	}

}
