package com.helpgpt.sports.match.model.dao;

import java.io.FileInputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;
import com.helpgpt.sports.match.model.vo.PlayerRanking;
import com.helpgpt.sports.match.model.vo.TeamRanking;
import com.helpgpt.sports.teams.model.vo.Teams;
import com.helpgpt.sports.match.model.vo.HitterRecord;
import com.helpgpt.sports.match.model.vo.Match;
import com.helpgpt.sports.match.model.vo.MatchResult;
import com.helpgpt.sports.match.model.vo.MatchScore;
import com.helpgpt.sports.match.model.vo.PitcherRecord;

public class MatchDAO {
	private Properties prop = new Properties();
	private CallableStatement cstmt;

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

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
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

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
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

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
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

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
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

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
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

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
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

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
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

	public List<Teams> getTeams(Connection conn) {
		List<Teams> teams = new ArrayList<>();
		String sql = prop.getProperty("getTeams");

		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
			while (rs.next()) {
				Teams team = new Teams();
				team.setTeamNo(rs.getInt("TEAM_NO"));
				team.setTeamName(rs.getString("TEAM_NAME"));

				teams.add(team);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return teams;
	}

	

	private void savePitcherRecords(Connection conn, List<PitcherRecord> pitcherRecords, String teamName, String sqlKey)
			throws Exception {
		String sql = prop.getProperty(sqlKey);
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			for (PitcherRecord record : pitcherRecords) {
				pstmt.setString(1, record.getPlayerName());
				pstmt.setString(2, teamName);
				pstmt.setInt(3, record.getInning());
				pstmt.setInt(4, record.getPitchCount());
				pstmt.setInt(5, record.getHitted());
				pstmt.setInt(6, record.getHomeruned());
				pstmt.setInt(7, record.getStrikeOuted());
				pstmt.setInt(8, record.getDeadBall());
				pstmt.setInt(9, record.getLossScore());
				pstmt.setInt(10, record.getSelfLose());
				pstmt.setDouble(11, record.getEra());
				pstmt.setDouble(12, record.getWhip());
				pstmt.addBatch();
			}
			pstmt.executeUpdate();
		}
	}

	private void saveHitterRecords(Connection conn, List<HitterRecord> hitterRecords, String teamName, String sqlKey)
			throws Exception {
		String sql = prop.getProperty(sqlKey);
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			for (HitterRecord record : hitterRecords) {
				pstmt.setString(1, record.getPlayerName());
				pstmt.setString(2, teamName);
				pstmt.setInt(3, record.getAtBat());
				pstmt.setInt(4, record.getHit());
				pstmt.setInt(5, record.getDoubleHit());
				pstmt.setInt(6, record.getTripleHit());
				pstmt.setInt(7, record.getHomeRun());
				pstmt.setInt(8, record.getRun());
				pstmt.setInt(9, record.getRbi());
				pstmt.setInt(10, record.getStrikeOut());
				pstmt.setInt(11, record.getWalk());
				pstmt.setDouble(12, record.getAvg());
				pstmt.addBatch();
			}
			pstmt.executeUpdate();
		}
	}

	private void saveMatchScore(Connection conn, List<MatchScore> matchScore) throws Exception{
    	
		String sql = prop.getProperty("saveMatchScore");
 
    	
    }
}
