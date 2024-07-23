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
    private static final long serialVersionUID = 1L;
    MatchService service = new MatchService();

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // Path 지정
        PrintWriter out = res.getWriter();
        String reqPath = req.getPathInfo();
        String path = "";

        if (reqPath != null) {
            path = reqPath.split("/")[1];
        }

        Map<String, Object> result = new HashMap<>();

        // 경로에 따라 필요한 기능을 사용 ("*" 이후 들어갈 첫번째 값이 해당 기능)
        switch (path) {
            case "list": {
                String day = req.getParameter("day");
                List<Match> matchList = service.getMatchesByDay(day);

                if (matchList.size() > 0) {
                    result.put("matches", matchList);
                    result.put("message", "success to get MatchList");
                } else {
                    result.put("message", "failed to get MatchList");
                }

                new Gson().toJson(result, out);
                break;
            }

            default: {
                System.out.println("[ERROR] MATCH API");
            }
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req, res);
    }
}
