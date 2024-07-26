package com.helpgpt.sports.match.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.helpgpt.sports.match.model.service.MatchService;
import com.helpgpt.sports.match.model.vo.PlayerRanking;
import com.helpgpt.sports.match.model.vo.TeamRanking;

@WebServlet("/api/match/*")
public class MatchApi extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MatchService matchService = new MatchService();
    private Gson gson = new Gson();

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        String path = req.getPathInfo().substring(1);

        switch (path) {
        // matchMain 페이지
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
                
                
                
                // 이제 matchteamRanking 페이지
            case "teamRankingsForTeamRanking":
            	List<TeamRanking> teamRankingsForTeamRanking = matchService.getTeamRankingsForTeamRanking();
            	gson.toJson(teamRankingsForTeamRanking, out);
            	break;
            
            default:
                res.setStatus(HttpServletResponse.SC_NOT_FOUND);
                gson.toJson("Invalid API path", out);
                break;
        }
    }
}
