package com.helpgpt.sports.teams.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpgpt.sports.teams.model.service.PositionService;

@WebServlet("/players/")
public class PositionServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int type = Integer.parseInt(req.getParameter("type"));
			
			int playerNo= 1;
			
			if(req.getParameter("playerNo") != null) {
				playerNo = Integer.parseInt(req.getParameter("playerNo"));
			}
			
			PositionService service = new PositionService();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
