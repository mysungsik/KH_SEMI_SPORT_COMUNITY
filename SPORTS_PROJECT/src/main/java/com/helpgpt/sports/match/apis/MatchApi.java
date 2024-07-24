package com.helpgpt.sports.match.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.helpgpt.sports.match.model.service.MatchService;
import com.helpgpt.sports.match.model.vo.Match;

@WebServlet("/api/match/*")
public class MatchApi extends HttpServlet {
    MatchService service = new MatchService();

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        String reqPath = req.getPathInfo();
        String path = "";

        if (reqPath != null) {
            path = reqPath.split("/")[1];
        }

        Map<String, Object> result = new HashMap<>();

        switch (path) {
            case "teamRankings":
                List<Match> teamRankings = service.getTeamRankings();
                result.put("data", teamRankings);
                result.put("message", "success");
                break;
            default:
                result.put("message", "Invalid API path");
        }

        new Gson().toJson(result, out);
    }
}
