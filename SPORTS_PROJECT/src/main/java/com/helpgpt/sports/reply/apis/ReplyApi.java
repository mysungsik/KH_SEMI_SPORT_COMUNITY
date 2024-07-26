package com.helpgpt.sports.reply.apis;

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
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.reply.model.service.ReplyService;
import com.helpgpt.sports.reply.model.vo.Reply;

@WebServlet("/api/reply/*")
public class ReplyApi extends HttpServlet {
	ReplyService service = new ReplyService();
	
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
			case "getReplyAll" : {
				int targetTypeNo = Integer.parseInt(req.getParameter("typeNo"));
				int targetNo = Integer.parseInt(req.getParameter("targetNo"));
				
				Map<String, Object> result = new HashMap<>();
				
				List<Reply> replyList = service.getReplyAllByOneTarget(targetTypeNo, targetNo);
				
				if (replyList.size() > 0) {
					result.put("message", "success get all reply");
					result.put("data", replyList);
					new Gson().toJson(result, out);
				}else {
					result.put("message", "there is no reply");
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
			case "insertReply" : {
				int targetTypeNo = Integer.parseInt(req.getParameter("typeNo"));
				int targetNo = Integer.parseInt(req.getParameter("targetNo"));
				String replyContent = req.getParameter("replyContent");
				
				// XSS 방지 및 개행문자 처리
				replyContent = Util.XSSHandling(replyContent);
				replyContent = Util.newLineHandling(replyContent);
				
				Reply returnReply = service.insertReply(targetTypeNo, loginUser, targetNo, replyContent);
				
				if (returnReply != null) {
					result.put("message", "reply insert success");
					result.put("data", returnReply);
					new Gson().toJson(result, out);
				}else {
					result.put("message", "there is no reply");
					new Gson().toJson(result, out);
				}
			};break;
			case "deleteReply" : {
				int replyNo = Integer.parseInt(req.getParameter("replyNo"));

				int deleteResult = service.deleteReply(replyNo);
				
				if (deleteResult > 0) {
					result.put("message", "success to delete reply");
					result.put("data", deleteResult);
					new Gson().toJson(result, out);
				}else {
					result.put("message", "failed to delete reply");
					new Gson().toJson(result, out);
				}
			};break;
			
		}
	
	}
}
