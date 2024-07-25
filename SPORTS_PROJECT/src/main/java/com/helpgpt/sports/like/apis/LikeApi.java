package com.helpgpt.sports.like.apis;

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
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.common.util.Util;
import com.helpgpt.sports.like.model.service.LikeService;
import com.helpgpt.sports.like.model.vo.Like;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.reply.model.vo.Reply;

@WebServlet("/api/like/*")
public class LikeApi extends HttpServlet {
	LikeService service = new LikeService();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}

		// 경로에 따라 필요한 기능을 사용
		switch (path) {
			case "getLikeAll" : {
				int targetTypeNo = Integer.parseInt(req.getParameter("typeNo"));
				int targetNo = Integer.parseInt(req.getParameter("targetNo"));
				
				Map<String, Object> result = new HashMap<>();
				
				List<Like> likeList = service.getLikeAllByOneTarget(targetTypeNo, targetNo);
				
				if (likeList.size() > 0) {
					result.put("message", "success get all Likes");
					result.put("data", likeList);
					new Gson().toJson(result, out);
				}else {
					result.put("message", "there is no Like");
					new Gson().toJson(result, out);
				}
			};break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		User loginUser = null;
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		Map<String, Object> result = new HashMap<>();
		
		// 로그인 유저 확인
		HttpSession session = req.getSession(false);
		if (session != null) {
			loginUser = (User)session.getAttribute("loginUser");
		}else {
			result.put("message", "로그인된 사용자만 이용가능합니다.");
			new Gson().toJson(result, out);
			
			return;
		}

		// 경로에 따라 필요한 기능을 사용
		switch (path) {
			case "modifyLike" : {
				int targetTypeNo = Integer.parseInt(req.getParameter("typeNo"));
				int targetNo = Integer.parseInt(req.getParameter("targetNo"));
				int userNo = loginUser.getUserNo();
				
				
				String likeResult = service.insertLike(targetTypeNo, targetNo, userNo);
				
				if (likeResult != null) {
					result.put("message", "Success to insert like");
					result.put("data", likeResult);
					new Gson().toJson(result, out);
				}else {
					result.put("message", "Faile to insert Like");
					new Gson().toJson(result, out);
				}
			};break;
		}
	}
}
