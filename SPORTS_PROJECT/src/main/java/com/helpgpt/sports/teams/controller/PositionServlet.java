package com.helpgpt.sports.teams.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpgpt.sports.teams.model.service.PositionService;

@WebServlet("/players")
public class PositionServlet extends HttpServlet{
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		try {
//			int type = Integer.parseInt(req.getParameter("type"));
//			
//			PositionService service = new PositionService();
//			Map<String, Object> map = service.selectPosition(type);
//			
//			req.setAttribute("map", map);
//			
//			String path = "/WEB-INF/views/teams/teamPlayers.jsp";
//			
//			req.getRequestDispatcher(path).forward(req, resp);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
}
