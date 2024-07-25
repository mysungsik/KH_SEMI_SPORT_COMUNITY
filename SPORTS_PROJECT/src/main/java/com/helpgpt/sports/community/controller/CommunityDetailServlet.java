package com.helpgpt.sports.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.reply.model.vo.Reply;

@WebServlet("/community/communityDetail/insertReply")
public class CommunityDetailServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
        User loginUser = (User) session.getAttribute("loginUser");
        int userNo = loginUser.getUserNo();
        String replyContent = req.getParameter("replyContent");
        
	}

}
