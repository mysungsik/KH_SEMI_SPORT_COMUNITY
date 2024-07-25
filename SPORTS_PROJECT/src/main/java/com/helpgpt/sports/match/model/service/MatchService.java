package com.helpgpt.sports.match.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.match.model.dao.MatchDAO;
import com.helpgpt.sports.match.model.vo.TeamRanking;

public class MatchService {
    private MatchDAO matchDAO = new MatchDAO();

    public List<TeamRanking> getTeamRankings() {
        Connection conn = getConnection();
        List<TeamRanking> rankings = matchDAO.getTeamRankings(conn);
        close(conn);
        return rankings;
    }
}
