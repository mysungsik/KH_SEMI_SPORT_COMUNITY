package com.helpgpt.sports.match.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.match.model.vo.Match;

public class MatchDao {
    Properties prop;

    public MatchDao() {
        String defaultPath = "/com/helpgpt/sports/common/sqls/";
        String filePath = MatchDao.class.getResource(defaultPath + "match-sql.xml").getPath();
        try {
            prop = new Properties();
            FileInputStream fis = new FileInputStream(filePath);
            prop.loadFromXML(fis);
        } catch (Exception e) {
            System.out.println("[ERROR] Failed to Load match-sql file");
            e.printStackTrace();
        }
    }

//    public List<Match> getMatchesByDay(Connection conn, String day) {
//        List<Match> matchList = new ArrayList<>();
//        String sql = prop.getProperty("getMatchesByDay");
//
//        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, day.toUpperCase());
//            try (ResultSet rs = pstmt.executeQuery()) {
//                while (rs.next()) {
//                    Match match = new Match();
//                    match.setMatchNo(rs.getInt("MATCH_NO"));
//                    match.setTeamNo(rs.getInt("TEAM_NO"));
//                    match.setStadiumNo(rs.getInt("STADIUM_NO"));
//                    match.setPositionNo(rs.getInt("POSITION_NO"));
//                    match.setScore(rs.getInt("SCORE"));
//                    match.setMatchDate(rs.getString("MATCH_DT"));
//                    match.setGround(rs.getString("GROUND"));
//                    matchList.add(match);
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return matchList;
//    }

    public List<Match> getTeamRankings(Connection conn) {
        List<Match> teamRankings = new ArrayList<>();
        String sql = prop.getProperty("getTeamRankings");

        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                Match match = new Match();
                match.setTeamName(rs.getString("TEAM_NAME"));
                match.setMatchCount(rs.getInt("MATCH_COUNT"));
                match.setWin(rs.getInt("WIN"));
                match.setLose(rs.getInt("LOSE"));
                match.setWinRate(rs.getDouble("WIN_RATE"));
                match.setConseq(rs.getString("CONSEQUENCE"));
                //match.setBattingAverage(rs.getDouble("BATTING_AVERAGE"));
                match.setEra(rs.getDouble("ERA"));
                //match.setRecentMatch(rs.getString("RECENT_MATCH"));
                
                teamRankings.add(match);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return teamRankings;
    }
}
