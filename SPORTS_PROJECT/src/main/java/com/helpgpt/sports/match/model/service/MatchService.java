package com.helpgpt.sports.match.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.helpgpt.sports.match.model.dao.MatchDAO;
import com.helpgpt.sports.match.model.vo.PlayerRanking;
import com.helpgpt.sports.match.model.vo.TeamRanking;
import com.helpgpt.sports.teams.model.vo.Teams;
import com.helpgpt.sports.match.model.vo.HitterRecord;
import com.helpgpt.sports.match.model.vo.Match;
import com.helpgpt.sports.match.model.vo.MatchResult;

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

    public List<String> getPlayersByTeam(String teamName) {
        Connection conn = getConnection();
        List<String> players = dao.getPlayersByTeam(conn, teamName);
        close(conn);
        return players;
    }

    public List<String> getStadiumsByTeam(String teamName) {
        Connection conn = getConnection();
        List<String> stadiums = dao.getStadiumsByTeam(conn, teamName);
        close(conn);
        return stadiums;
    }

    public List<Teams> getTeams() {
        Connection conn = getConnection();
        List<Teams> teams = dao.getTeams(conn);
        close(conn);
        return teams;
    }

//    public List<MatchResult> saveMatchResult() {
//        Connection conn = getConnection();
//        List<MatchResult> results = dao.saveMatchResult(conn);
//        close(conn);
//        return matchResult;
//     
//        
//        
//        int saveMatchRresult = dao.saveMatchResult();
//        
//       
        
        
    }
//}
 
        
        
        
