package com.helpgpt.sports.teams.apis;

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
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.profile.model.vo.LoginHistory;
import com.helpgpt.sports.teams.model.service.TeamsService;
import com.helpgpt.sports.teams.model.vo.Teams;

@WebServlet("/api/teams/*")
public class TeamApi extends HttpServlet{

	TeamsService service = new TeamsService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}else {
			
		}

		String teamName = "";

		// 경로에 따라 필요한 기능을 사용
		Map<String, Object> result = new HashMap<>();
		
		switch(path) {
			case "getTeams":{
				System.out.println("테스트!!!!!!");
	
				// teamName 받아오기
				teamName = path;
				List<Teams> teamsList = service.getTeamsList();
				System.out.println(teamsList);
				if (!teamsList.isEmpty()) {
					result.put("data", teamsList);
					result.put("message", "success to get teamsList");
				} else {
					result.put("message", "failed to get teamsList");
				}
	
				new Gson().toJson(result, out);
			}break;
			
			default:{
				result.put("message", "failed to get teamsLists");
				new Gson().toJson(result, out);
			}
		}
		
	}

}
