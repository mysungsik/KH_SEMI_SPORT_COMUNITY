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

import com.helpgpt.sports.teams.model.service.TeamsService;
import com.helpgpt.sports.teams.model.vo.Teams;

@WebServlet("/api/teams/*")
public class TeamApi extends HttpServlet{
	
	TeamsService service = new TeamsService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		Map<String, Object> result = new HashMap<>();
		int teamNo = 0;
		
		switch(path) {
		
			case "":{
				List<Teams> teamsList = service.selectTeamsList(teamNo);
			}break;
			
			default: {
				System.out.println("hi");
			}
		}
		
	}
}
