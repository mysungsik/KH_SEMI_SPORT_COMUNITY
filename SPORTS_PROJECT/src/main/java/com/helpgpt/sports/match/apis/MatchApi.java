package com.helpgpt.sports.match.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.helpgpt.sports.match.model.service.MatchService;
import com.helpgpt.sports.match.model.vo.PlayerRanking;
import com.helpgpt.sports.match.model.vo.StadiumInfo;
import com.helpgpt.sports.match.model.vo.TeamRanking;
import com.helpgpt.sports.teams.model.vo.Teams;
import com.helpgpt.sports.match.model.vo.HitterRecord;
import com.helpgpt.sports.match.model.vo.Match;
import com.helpgpt.sports.match.model.vo.MatchResult;
import com.helpgpt.sports.match.model.vo.MatchScore;
import com.helpgpt.sports.match.model.vo.PitcherRecord;

@WebServlet("/api/match/*")
public class MatchApi extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MatchService matchService = new MatchService();
    private Gson gson = new Gson();

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        String path = req.getPathInfo().substring(1);

        switch (path) {
            case "teamRankingsForMain":
                List<TeamRanking> teamRankingsForMain = matchService.getTeamRankingsForMain();
                gson.toJson(teamRankingsForMain, out);
                break;
            case "playerRankingWin":
                List<PlayerRanking> playerRankingWin = matchService.getPlayerRankingWin();
                gson.toJson(playerRankingWin, out);
                break;
            case "playerRankingERA":
                List<PlayerRanking> playerRankingERA = matchService.getPlayerRankingERA();
                gson.toJson(playerRankingERA, out);
                break;
            case "playerRankingStrikeouts":
                List<PlayerRanking> playerRankingStrikeouts = matchService.getPlayerRankingStrikeouts();
                gson.toJson(playerRankingStrikeouts, out);
                break;
            case "playerRankingHits":
                List<PlayerRanking> playerRankingHits = matchService.getPlayerRankingHits();
                gson.toJson(playerRankingHits, out);
                break;
            case "playerRankingWHIP":
                List<PlayerRanking> playerRankingWHIP = matchService.getPlayerRankingWHIP();
                gson.toJson(playerRankingWHIP, out);
                break;
            case "teamRankingsForTeamRanking":
                List<TeamRanking> teamRankingsForTeamRanking = matchService.getTeamRankingsForTeamRanking();
                gson.toJson(teamRankingsForTeamRanking, out);
                break;
            case "getPlayersByTeam":
                String teamName = req.getParameter("teamName");
                List<String> players = matchService.getPlayersByTeam(teamName);
                gson.toJson(players, out);
                break;
            case "getStadiumsByTeam":
                teamName = req.getParameter("teamName");
                List<String> stadiums = matchService.getStadiumsByTeam(teamName);
                gson.toJson(stadiums, out);
                break;
            case "getTeams":
                List<Teams> teams = matchService.getTeams();
                gson.toJson(teams, out);
                break;
       
            default:
                res.setStatus(HttpServletResponse.SC_NOT_FOUND);
                gson.toJson("Invalid API path", out);
                break;
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        MatchResult matchResult = gson.fromJson(req.getReader(), MatchResult.class);
        
        System.out.println("aaaaaaaaaaaaaaaaaaaa");
        System.out.println(matchResult);
        List<Match> match = new ArrayList<>();
        MatchScore matchScore = new MatchScore();
        PitcherRecord pitcherRecord = new PitcherRecord();
        HitterRecord hitterRecord = new HitterRecord();
        
       
        ((Teams) match).setTeamNo(((Teams) match).getTeamNo());
//        match.setTeamName(match.getTeamName());
//        match.setStadiumNo(match.getStadiumNo());
//        match.setStadiumName(match.getStadiumName());
//        match.setPlayerNo(match.getPlayerNo());
//        match.setPlayerName(match.getPlayerName());
//        match.setScore(match.getScore());
//        match.setMatchDt(match.getMatchDt());
//        match.setGround(match.getGround());
//        
        pitcherRecord.setPlayerName(pitcherRecord.getPlayerName());
        pitcherRecord.setInning(pitcherRecord.getInning());
        pitcherRecord.setPitchCount(pitcherRecord.getPitchCount());
        pitcherRecord.setHitted(pitcherRecord.getHitted());
        pitcherRecord.setHomeruned(pitcherRecord.getHomeruned());
        pitcherRecord.setStrikeOuted(pitcherRecord.getStrikeOuted());
        pitcherRecord.setDeadBall(pitcherRecord.getDeadBall());
        pitcherRecord.setLossScore(pitcherRecord.getLossScore());
        pitcherRecord.setSelfLose(pitcherRecord.getSelfLose());
        pitcherRecord.setEra(pitcherRecord.getEra());
        pitcherRecord.setWhip(pitcherRecord.getWhip());
        
        hitterRecord.setPlayerName(hitterRecord.getPlayerName());
        hitterRecord.setHit(hitterRecord.getHit());
        hitterRecord.setHomeRun(hitterRecord.getHomeRun());
        hitterRecord.setRun(hitterRecord.getRun());
        hitterRecord.setRbi(hitterRecord.getRbi());
        hitterRecord.setStrikeOut(hitterRecord.getStrikeOut());
        hitterRecord.setWalk(hitterRecord.getWalk());
        hitterRecord.setAvg(hitterRecord.getAvg());
        
        matchScore.setScoreNo(matchScore.getScoreNo());
        matchScore.setMatchNo(matchScore.getMatchNo());
        matchScore.setTeamNo(matchScore.getTeamNo());
        matchScore.setHit(matchScore.getHit());
        matchScore.setHomeRun(matchScore.getHomeRun());
        matchScore.setStkOut(matchScore.getStkOut());
        matchScore.setStoleBase(matchScore.getStoleBase());
        matchScore.setDoublePlay(matchScore.getDoublePlay());
        matchScore.setErrorScore(matchScore.getErrorScore());
        matchScore.setTeamName(matchScore.getTeamName());
        
        
        
        
        {       
        	
//            "matchDate": "2024-07-30",
//            "winTeam": "KIA",
//            "loseTeam": "HANWHA",
//            "matchPlace": "대전 한화생명 이글스파크",
//            "winnerScore": "50",
//            "loserScore": "20",
//            "winPitcher": "양현종",
//            "losePitcher": "김동준",
//            "hitsWinner": "54",
//            "hrWinner": "0",
//            "soWinner": "9",
//            "sbWinner": "0",
//            "dpWinner": "1",
//            "erWinner": "2",
//            "hitsLoser": "25",
//            "hrLoser": "4",
//            "soLoser": "10",
//            "sbLoser": "5",
//            "dpLoser": "0",
//            "erLoser": "3"
        }
        
        
        
//        boolean isSuccess = matchService.saveMatchResult(matchResult);
        

//        if (isSuccess) {
//            res.setStatus(HttpServletResponse.SC_OK);
//            gson.toJson("Match result saved successfully", out);
//        } else {
//            res.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
//            gson.toJson("Failed to save match result", out);
//        }
    }
}
