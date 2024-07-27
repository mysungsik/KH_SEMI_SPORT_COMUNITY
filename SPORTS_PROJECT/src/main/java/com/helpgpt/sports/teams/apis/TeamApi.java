package com.helpgpt.sports.teams.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
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
		String team = req.getParameter("team");

		if (reqPath != null) {
			path = getLastPathSegment(reqPath);
			
		}else {
			System.out.println("reqPath가 null입니다.");
		}
		

		// 경로에 따라 필요한 기능을 사용
		Map<String, Object> result = new HashMap<>();
		
		switch(path) {
			case "getTeams":{	
				List<Teams> teamsList = service.getTeamsAll();
				
				if (!teamsList.isEmpty()) {
					result.put("data", teamsList);
					
					result.put("message", "success to get teamsList");
				} else {
					result.put("message", "failed to get teamsList");
				}
				
				new Gson().toJson(result, out);
			}break;
			
			case "getTeamNav":{
				Teams teamNav = service.getTeamNav(team);
				if (teamNav != null) {
					result.put("data", teamNav);
					result.put("message", "success to get teamNav");
				} else {
					result.put("message", "failed to get teamNav");
				}
				new Gson().toJson(result, out);
				
			}break;
			
			
			case "getOneTeam" :{
				Teams oneTeam = service.getOneTeam(team);
				if (oneTeam != null) {
					result.put("data", oneTeam);
					result.put("message", "success to get oneTeam");
				} else {
					result.put("message", "failed to get oneTeam");
				}
				new Gson().toJson(result, out);
			}break;
			
			
			default:{
				result.put("message", "failed to get teamsLists");
				new Gson().toJson(result, out);
			}
			
		
		}
		
	}
	
	// 마지막 segment만 추출하는 함수
	public static String getLastPathSegment(String url) {
		
        if (url == null || url.isEmpty()) {
            System.out.println("url이 비어있습니다.");;
        }
        
        // 쿼리 문자열을 제거
        int queryIndex = url.indexOf("?");
        if (queryIndex != -1) {
            url = url.substring(0, queryIndex);
        }
        // URL을 "/"로 분리하고 마지막 부분을 반환
        String[] parts = url.split("/");
        return parts[parts.length - 1];
    }

}
