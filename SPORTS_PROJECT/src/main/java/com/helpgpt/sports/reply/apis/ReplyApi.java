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

import com.google.gson.Gson;
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
}
