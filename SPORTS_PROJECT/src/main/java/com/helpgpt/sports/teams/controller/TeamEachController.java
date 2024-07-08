package com.helpgpt.sports.teams.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="teamEachController",
			urlPatterns = {
				"/team/*",
				"/team",
			})
public class TeamEachController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/teams/";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String reqPath = req.getPathInfo();
		String sub="";
		
		System.out.println(reqPath);
		
		if(reqPath != null) {
			sub = reqPath.split("/")[1];
		}
		
		switch(sub) {
			case "":{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamsEachMain.jsp");
				dispatcher.forward(req, resp);
			}break;
			
			case "info" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamInfo.jsp");
				req.setAttribute("sub", sub); 
				dispatcher.forward(req, resp);
			};break;
			
			case "players" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamPlayers.jsp");
				req.setAttribute("sub", sub); 
				dispatcher.forward(req, resp);
			};break;
			
			case "schedule" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamSchedule.jsp");
				req.setAttribute("sub", sub); 
				dispatcher.forward(req, resp);
			};break;
			
			case "content" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamContent.jsp");
				req.setAttribute("sub", sub); 
				dispatcher.forward(req, resp);
			};break;
		
		default:System.out.println("404 페이지로 이동");}
		
	}
}
