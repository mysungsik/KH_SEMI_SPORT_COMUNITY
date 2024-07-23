package com.helpgpt.sports.findInfo.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.helpgpt.sports.findInfo.model.service.UpdateInfoService;

@WebServlet("/api/updateUser/*")
public class UpdateUserApi extends HttpServlet {
	UpdateInfoService service = new UpdateInfoService();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reqPath = request.getPathInfo();
		String path = "";
		
		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		Map<String, Object> result = new HashMap<>();
		PrintWriter out = response.getWriter();
		
 		switch (path) {
			case "resetPw" : {
				int userNo = Integer.parseInt(request.getParameter("userNo"));
				String inputMailAuth = request.getParameter("inputMailAuth");
				
				int isMailAuthChecked = 0;
				
				isMailAuthChecked = service.mailCheck(userNo, inputMailAuth);	// 성공시
				
				if (isMailAuthChecked > 0) {
					service.resetUserPw(userNo);
					result.put("data", "success");
					result.put("message", "비밀번호가 변경되었습니다.");
					result.put("status", 200);
				} else {
					result.put("message", "비밀번호 변경에 실패하였습니다..");
					result.put("status", 200);
				}
				
				Gson gson = new Gson();
				gson.toJson(result,out);
			
			};break;
		}
	}
}
