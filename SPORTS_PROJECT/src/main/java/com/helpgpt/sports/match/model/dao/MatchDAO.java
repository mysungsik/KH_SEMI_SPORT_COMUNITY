package com.helpgpt.sports.match.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;
import com.helpgpt.sports.match.model.vo.PlayerRanking;
import com.helpgpt.sports.match.model.vo.TeamRanking;

public class MatchDAO {
    private Properties prop = new Properties();

    public MatchDAO() {
        try {
            String filePath = MatchDAO.class.getResource("/com/helpgpt/sports/common/sqls/match-sql.xml").getPath();
            prop.loadFromXML(new FileInputStream(filePath));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<TeamRanking> getTeamRankingsForMain(Connection conn) {
        List<TeamRanking> rankings = new ArrayList<>();
        String sql = prop.getProperty("getTeamRankingsForMain");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                TeamRanking ranking = new TeamRanking();
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setMatchCount(rs.getInt("MATCH_COUNT"));
                ranking.setWin(rs.getInt("WIN"));
                ranking.setLose(rs.getInt("LOSE"));
                ranking.setGameDifference(rs.getInt("GAME_DIFFERENCE"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return rankings;
    }

     // match Team Ranking 에 들어갈 친구임 
    public List<TeamRanking> getTeamRankingsForTeamRanking(Connection conn) {
        List<TeamRanking> rankings = new ArrayList<>();
        String sql = prop.getProperty("getTeamRankingsForTeamRanking");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                TeamRanking ranking = new TeamRanking();
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setMatchCount(rs.getInt("MATCH_COUNT"));
                ranking.setWin(rs.getInt("WIN"));
                ranking.setLose(rs.getInt("LOSE"));
                ranking.setWinRate(rs.getDouble("WIN_RATE"));
                ranking.setBattingAvg(rs.getDouble("BATTING_AVG"));
                ranking.setEra(rs.getDouble("ERA"));
                ranking.setRecentMatch(rs.getString("RECENT_MATCH"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return rankings;
    }

    public List<PlayerRanking> getPlayerRankingWin(Connection conn) {
        List<PlayerRanking> rankings = new ArrayList<>();
        String sql = prop.getProperty("getPlayerRankingWin");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                PlayerRanking ranking = new PlayerRanking();
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setPlayerName(rs.getString("PLAYER_NAME"));
                ranking.setWinCount(rs.getInt("WIN_COUNT"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return rankings;
    }

    public List<PlayerRanking> getPlayerRankingERA(Connection conn) {
        List<PlayerRanking> rankings = new ArrayList<>();
        String sql = prop.getProperty("getPlayerRankingERA");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                PlayerRanking ranking = new PlayerRanking();
                ranking.setPlayerName(rs.getString("PLAYER_NAME"));
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setEra(rs.getDouble("ERA"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return rankings;
    }

    public List<PlayerRanking> getPlayerRankingStrikeouts(Connection conn) {
        List<PlayerRanking> rankings = new ArrayList<>();
        String sql = prop.getProperty("getPlayerRankingStrikeouts");
        
        try (
        		PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()
            		 ) {
            while (rs.next()) {
                PlayerRanking ranking = new PlayerRanking();
                ranking.setPlayerName(rs.getString("PLAYER_NAME"));
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setWinCount(rs.getInt("STRIKEOUTS"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return rankings;
    }

    public List<PlayerRanking> getPlayerRankingHits(Connection conn) {
        List<PlayerRanking> rankings = new ArrayList<>();
        String sql = prop.getProperty("getPlayerRankingHits");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                PlayerRanking ranking = new PlayerRanking();
                ranking.setPlayerName(rs.getString("PLAYER_NAME"));
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setHit(rs.getInt("HIT"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return rankings;
    }

    public List<PlayerRanking> getPlayerRankingWHIP(Connection conn) {
        List<PlayerRanking> rankings = new ArrayList<>();
        String sql = prop.getProperty("getPlayerRankingWHIP");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                PlayerRanking ranking = new PlayerRanking();
                ranking.setPlayerName(rs.getString("PLAYER_NAME"));
                ranking.setTeamName(rs.getString("TEAM_NAME"));
                ranking.setWhip(rs.getDouble("WHIP"));
                rankings.add(ranking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return rankings;
    }
}
