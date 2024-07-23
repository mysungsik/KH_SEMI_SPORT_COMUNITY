package com.helpgpt.sports.match.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.helpgpt.sports.match.model.vo.Match;

public class MatchDao {

    public List<Match> getMatchesByDay(Connection conn, String day) {
        List<Match> matchList = new ArrayList<>();
        String sql = "SELECT * FROM MATCH WHERE TO_CHAR(MATCH_DT, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') = ?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, day.toUpperCase());
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    Match match = new Match();
                    match.setMatchNo(rs.getInt("MATCH_NO"));
                    match.setTeamNo(rs.getInt("TEAM_NO"));
                    match.setStadiumNo(rs.getInt("STADIUM_NO"));
                    match.setPositionNo(rs.getInt("POSITION_NO"));
                    match.setScore(rs.getInt("SCORE"));
                    match.setMatchDate(rs.getString("MATCH_DT"));
                    match.setGround(rs.getString("GROUND"));
                    matchList.add(match);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return matchList;
    }
}
