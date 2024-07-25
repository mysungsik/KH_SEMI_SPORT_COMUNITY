package com.helpgpt.sports.match.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;
import com.helpgpt.sports.match.model.vo.TeamRanking;

public class MatchDAO {
    private Properties prop;

    public MatchDAO() {
        String fileName = MatchDAO.class.getResource("/com/helpgpt/sports/common/sqls/match-sql.xml").getPath();
        try {
            prop = new Properties();
            prop.loadFromXML(new FileInputStream(fileName));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<TeamRanking> getTeamRankings(Connection conn) {
        List<TeamRanking> rankings = new ArrayList<>();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = prop.getProperty("getTeamRankings");

        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                TeamRanking ranking = new TeamRanking();
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setMatchCount(rs.getInt("MATCH_COUNT"));
                ranking.setWin(rs.getInt("WIN"));
                ranking.setLose(rs.getInt("LOSE"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(rs);
            close(pstmt);
        }

        return rankings;
    }
}
