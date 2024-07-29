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
import com.helpgpt.sports.match.model.vo.MatchResult;

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
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
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

    public List<String> getPlayersByTeam(Connection conn, String teamName) {
        List<String> players = new ArrayList<>();
        String sql = prop.getProperty("getPlayersByTeam");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, teamName);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    players.add(rs.getString("PLAYER_NAME"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return players;
    }

    public List<String> getStadiumsByTeam(Connection conn, String teamName) {
        List<String> stadiums = new ArrayList<>();
        String sql = prop.getProperty("getStadiumsByTeam");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, teamName);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    stadiums.add(rs.getString("STADIUM_NAME"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return stadiums;
    }

    public List<String> getTeams(Connection conn) {
        List<String> teams = new ArrayList<>();
        String sql = prop.getProperty("getTeams");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                teams.add(rs.getString("TEAM_NAME"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return teams;
    }

    public boolean saveMatchResult(Connection conn, MatchResult matchResult) {
        boolean isSuccess = false;
        String sql = prop.getProperty("saveMatchResult");
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, matchResult.getDate());
            pstmt.setString(2, matchResult.getWinTeam());
            pstmt.setString(3, matchResult.getLoseTeam());
            pstmt.setString(4, matchResult.getMatchPlace());
            pstmt.setInt(5, matchResult.getWinnerScore());
            pstmt.setInt(6, matchResult.getLoserScore());
            pstmt.setString(7, matchResult.getWinPitcher());
            pstmt.setString(8, matchResult.getLosePitcher());
            pstmt.setInt(9, matchResult.getHitsWinner());
            pstmt.setInt(10, matchResult.getHrWinner());
            pstmt.setInt(11, matchResult.getSoWinner());
            pstmt.setInt(12, matchResult.getSbWinner());
            pstmt.setInt(13, matchResult.getDpWinner());
            pstmt.setInt(14, matchResult.getErWinner());
            pstmt.setInt(15, matchResult.getHitsLoser());
            pstmt.setInt(16, matchResult.getHrLoser());
            pstmt.setInt(17, matchResult.getSoLoser());
            pstmt.setInt(18, matchResult.getSbLoser());
            pstmt.setInt(19, matchResult.getDpLoser());
            pstmt.setInt(20, matchResult.getErLoser());
            
            int result = pstmt.executeUpdate();
            if (result > 0) {
                isSuccess = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return isSuccess;
    }
}
