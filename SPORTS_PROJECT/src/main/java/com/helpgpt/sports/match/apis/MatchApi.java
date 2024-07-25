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
import com.helpgpt.sports.match.model.vo.TeamRanking;

/**
 * Servlet implementation class MatchApi
 */
@WebServlet("/api/match/*")
public class MatchApi extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MatchService matchService = new MatchService();
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String path = request.getPathInfo();
        Gson gson = new Gson();

        if (path.equals("/teamRankings")) {
            List<TeamRanking> rankings = matchService.getTeamRankings();
            String json = gson.toJson(rankings);
            response.setContentType("application/json; charset=UTF-8");
            out.print(json);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
