package com.helpgpt.sports.teams.controller;

import java.io.IOException;

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
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 페이지로 추가 이동
		switch (path) {
		case "": {
			dispatcher = req.getRequestDispatcher(defaultURLPath + "teams.jsp");
			dispatcher.forward(req, resp);
			}break;
		case "teamsEach":{
			dispatcher = req.getRequestDispatcher(defaultURLPath + "teamsEachMain.jsp");
			dispatcher.forward(req, resp);
		};break;
		default:System.out.println("404 페이지로 이동");}
		
	}
}
