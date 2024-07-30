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
		//System.out.println(team);
		
		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}else {
			System.out.println("reqPath가 null입니다.");
		}
		req.setAttribute("team", team);
		//System.out.println(team);
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
			
			case "getOneTeam" :{
				
				if(team!= "") {
					System.out.println(team);
					Teams oneTeam = service.getOneTeam(team);
					System.out.println(oneTeam);
					
					if (oneTeam != null) {
						result.put("data", oneTeam);
						result.put("message", "success to get oneTeam");
					} else {
						result.put("message", "failed to get oneTeam");
					}
				}
				new Gson().toJson(result, out);
			}break;
			
			default:{
				result.put("message", "failed to get teamsLists");
				new Gson().toJson(result, out);
			}
			
		
		}
		
	}
	
	
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		User loginUser = null;

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
			
		}else {
			System.out.println("reqPath가 null입니다.");
		}
		
		// 경로에 따라 필요한 기능을 사용
		Map<String, Object> result = new HashMap<>();
		
		// 경로에 따라 필요한 기능 사용
		switch(path) {
			case "addTeam":{
				String inputTeamName = req.getParameter("inputTeamName");
				String inputTeamLeader = req.getParameter("inputTeamLeader");
				String inputDirector = req.getParameter("inputDirector");
				String inputSponsor = req.getParameter("inputSponsor");
				String inputTeamRegion = req.getParameter("inputTeamRegion");
				String inputTeamDes = req.getParameter("inputTeamDes");
				String inputVideoUrl = req.getParameter("inputVideoUrl");
				String inputTeamColor = req.getParameter("inputTeamColor");
				String inputTeamLogo = req.getParameter("inputTeamLogo");
				String inputLogoDes = req.getParameter("inputLogoDes");
				String inputTeamEmblem = req.getParameter("inputTeamEmblem");
				String inputEmblemDes = req.getParameter("inputEmblemDes");
				String inputTeamMainPageImg = req.getParameter("inputTeamMainPageImg");
				String inputTeamHeaderImg = req.getParameter("inputTeamHeaderImg");
				
				Teams addTeamInfo = new Teams(inputTeamName, inputTeamLeader, inputDirector, inputSponsor, inputTeamRegion, inputTeamDes, inputVideoUrl, inputTeamColor, inputTeamLogo, inputLogoDes, inputTeamEmblem, inputEmblemDes, inputTeamMainPageImg, inputTeamHeaderImg);
				
				System.out.println("api까지는 잘 옴");
				
				int addTeamResult = service.addTeam(addTeamInfo);
				
				
				if(addTeamResult>0) {
					result.put("message", "구단 추가에 성공했습니다.");
					result.put("data", "Add Team Success");
					
					new Gson().toJson(result, out);
				}else {
					result.put("message", "구단 추가에 실패하였습니다.");
					new Gson().toJson(result, out);
				}
				
				
			}break;
			
			default:{
				result.put("message", "failed to get teamsLists");
				new Gson().toJson(result, out);
			}
		}
		
	}

}
