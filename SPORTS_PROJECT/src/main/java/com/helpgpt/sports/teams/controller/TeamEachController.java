package com.helpgpt.sports.teams.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="teamEachController",
urlPatterns = {
		"/team/*"
})
public class TeamEachController extends HttpServlet{

	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/teams/";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String reqPath = req.getPathInfo();
		
		String team="";
		String page="";

		if(reqPath != null) {
			if(reqPath.split("/").length == 3) {	// 페이지 비어있지 않을 때
				team = reqPath.split("/")[1];
				page = reqPath.split("/")[2];
			}else {
				team = reqPath.split("/")[1];
			}
		}
		/*
		 * if(reqPath != null) { }else { }
		 */
		// 1. team이 있고 페이지 비어있을 때 -> /team/kia -> teamsEachMain.jsp (setAttribute 에 team 넣기)
		// 2. team이 있고 페이지 있을 때 -> /team/kia/info -> teamInfo.jsp (setAttribute에 team 넣기)


		String[] teams={"kia", "lg", "doosan"};
		List<String> teamList = Arrays.asList(teams);


		if(teamList.contains(team)){

			req.setAttribute("team", team);
			switch(page) {
			case "" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamsEachMain.jsp");
				dispatcher.forward(req, resp);
			};break;
			case "info" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamInfo.jsp");
				dispatcher.forward(req, resp);
			};break;
			
			// 선수 추가 페이지 만들어야되는데 이거 안 잡힘 
			// => syso로 찍어본 결과, 모든 구단 내 페이지가 두 번씩 찍히고 두번째 찍혔을 때는 page 값이 null 이 됨.,,,^-ㅠ
			case "players/playerAdd":{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "playerAdd.jsp");
				dispatcher.forward(req, resp);
			};break;

			case "players" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamPlayers.jsp");
				dispatcher.forward(req, resp);
			};break;

			case "schedule" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamSchedule.jsp");
				dispatcher.forward(req, resp);
			};break;

			case "content" :{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "teamContent.jsp");
				dispatcher.forward(req, resp);
			};break;
			
			case "player":{
				String playerNo = req.getParameter("playerNo");
				//DB에서 값 조회
				dispatcher = req.getRequestDispatcher(defaultURLPath + "player.jsp");
				dispatcher.forward(req, resp);
			};break;

			// css 확인하려고 case 추가함(임시)
			case "playerAdd":{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "playerAdd.jsp");
				dispatcher.forward(req, resp);
			};break;

			default:
				System.out.println("-- 404 페이지로 이동!! -- ");
			}
		}


	}

}
