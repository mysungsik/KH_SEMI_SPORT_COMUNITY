package com.helpgpt.sports.teams.controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "teamsController",
			urlPatterns = {
				"/teams",	
				"/teams/*"}
)
public class TeamsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/teams/";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Path 지정
		String reqPath = req.getPathInfo();
		String team = "";
		String[] teams={"kia", "lg", "doosan","teamAdd"};

		List<String> teamList = Arrays.asList(teams);
		
		
		if(reqPath != null) {
			team = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 페이지로 추가 이동
		if(team=="") {
			dispatcher = req.getRequestDispatcher(defaultURLPath + "teams.jsp");
			dispatcher.forward(req, resp);
			
		}else {
			if(teamList.contains(team)){
				req.setAttribute("team", team);
				if(team.equals("teamAdd")){
					dispatcher=req.getRequestDispatcher(defaultURLPath + "teamAdd.jsp");
				}else{
					dispatcher = req.getRequestDispatcher(defaultURLPath + "teamsEachMain.jsp");
				}

				dispatcher.forward(req, resp);
			}else {
				System.out.println("404페이지로 이동");
			}
			
		}
		
		
	}
}
