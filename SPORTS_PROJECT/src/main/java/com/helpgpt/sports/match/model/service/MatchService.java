package com.helpgpt.sports.match.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.match.model.dao.MatchDAO;
import com.helpgpt.sports.match.model.vo.PlayerRanking;
import com.helpgpt.sports.match.model.vo.TeamRanking;

public class MatchService {
	private MatchDAO dao = new MatchDAO();

	public List<TeamRanking> getTeamRankingsForMain() {
		Connection conn = getConnection();
		List<TeamRanking> rankings = dao.getTeamRankingsForMain(conn);
		close(conn);
		return rankings;
	}

	public List<PlayerRanking> getPlayerRankingWin() {
		Connection conn = getConnection();
		List<PlayerRanking> rankings = dao.getPlayerRankingWin(conn);
		close(conn);
		return rankings;
	}

	public List<PlayerRanking> getPlayerRankingERA() {
		Connection conn = getConnection();
		List<PlayerRanking> rankings = dao.getPlayerRankingERA(conn);
		close(conn);
		return rankings;
	}
	public List<PlayerRanking> getPlayerRankingStrikeouts() {
        Connection conn = getConnection();
        List<PlayerRanking> list = dao.getPlayerRankingStrikeouts(conn);
        close(conn);
        return list;
    }

    public List<PlayerRanking> getPlayerRankingHits() {
        Connection conn = getConnection();
        List<PlayerRanking> list = dao.getPlayerRankingHits(conn);
        close(conn);
        return list;
    }

    public List<PlayerRanking> getPlayerRankingWHIP() {
        Connection conn = getConnection();
        List<PlayerRanking> list = dao.getPlayerRankingWHIP(conn);
        close(conn);
        return list;
    }
	
	
	
	
	

	public List<TeamRanking> getTeamRankingsForTeamRanking() {
		Connection conn = getConnection();
		List<TeamRanking> rankings = dao.getTeamRankingsForTeamRanking(conn);
		close(conn);
		return rankings;
	}
}
