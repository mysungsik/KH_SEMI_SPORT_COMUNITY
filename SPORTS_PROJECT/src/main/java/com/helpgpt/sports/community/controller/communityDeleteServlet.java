package com.helpgpt.sports.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpgpt.sports.community.model.service.CommunityService;

@WebServlet("/community/communityDetail/delete")
public class communityDeleteServlet extends HttpServlet{
	
	CommunityService service = new CommunityService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int boardNo = Integer.parseInt(req.getParameter("no"));
		
		int result = service.deleteBoard(boardNo);
		
		System.out.println(result);
		
        String path = null;
        if (result > 0) {
        	path = req.getContextPath() + "/community";
        } else {
            path = req.getContextPath() + "/community/communityDetail/" + boardNo;
        }
        
        resp.sendRedirect(path);
	}

}
