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
import com.helpgpt.sports.teams.model.service.PlayerService;
import com.helpgpt.sports.teams.model.vo.Player;

@WebServlet("/api/player/*")
public class PlayerApi extends HttpServlet {

	PlayerService service = new PlayerService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		String team = req.getParameter("team");
		// System.out.println(team);

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		} else {
			System.out.println("reqPath가 null입니다.");
		}
		req.setAttribute("team", team);

		// System.out.println(team);
		// 경로에 따라 필요한 기능을 사용
		Map<String, Object> result = new HashMap<>();

		System.out.println(path);

		switch (path) {
		case "getPlayer": {
			int type = Integer.parseInt( req.getParameter("type"));

			System.out.println("api : " + type);

			List<Player> PlayerList = service.getPlayerPosition(team, type);

			System.out.println("api : " + PlayerList);

			if (!PlayerList.isEmpty()) {
				result.put("data", PlayerList);

				result.put("message", "success to get PlayerList");
			} else {
				result.put("message", "failed to get PlayerList");
			}

			new Gson().toJson(result, out);
		}
		break;

		case "getPlayerPosition": {

			int type = Integer.parseInt( req.getParameter("type"));

			List<Player> PlayerList = service.getPlayerPosition(team, type);


			if (!PlayerList.isEmpty()) { result.put("data", PlayerList);

			result.put("message", "success to get PlayerList"); } 

			else {
				result.put("message", "failed to get PlayerList"); }

			new Gson().toJson(result, out);

		}break;

		case "getPlayerInfo":{
			int playerNo = Integer.parseInt(req.getParameter("playerNo"));
			List<Player> PlayerList = service.getPlayerInfo(playerNo);

			System.out.println(PlayerList);
			if (!PlayerList.isEmpty()) { 
				result.put("data", PlayerList);
				result.put("message", "success to get PlayerList"); } 

			else {
				result.put("message", "failed to get PlayerList"); 
			}
			new Gson().toJson(result, out);

		}break;

		default: {
			result.put("message", "failed to get teamsLists");
			new Gson().toJson(result, out);
		}


		}
	}

}
