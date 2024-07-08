package com.helpgpt.sports.forgetInfo.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class FindUser
 */
@WebServlet("/api/findUser/*")
public class FindUserApi extends HttpServlet {

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
			case "findId" : {
				String userId = null;
				
				// TODO : ID 를 DB 로 부터 찾는다. with Service, DAO
				System.out.println("ID 를 DB 로 부터 찾는다. with Service, DAO");
				userId = "sportUser";
				
				if (userId != null) {
					result.put("data", userId);
					result.put("message", "일치하는 아이디를 찾았습니다.");
					result.put("status", 200);
				} else {
					result.put("message", "일치하는 아이디를 찾지 못했습니다.");
					result.put("status", 200);
				}
				
				Gson gson = new Gson();
				gson.toJson(result,out);
			
			};break;
			
			case "findPw" : {
				boolean isFindPw = false;
				
				// TODO : PW 를 DB 로 부터 찾는다. with Service, DAO
				System.out.println("PW 를 DB 로 부터 찾는다. with Service, DAO");
				
				if (isFindPw) {
					result.put("data", "success");
					result.put("message", "일치하는 비밀번호를 찾았습니다.");
					result.put("status", 200);
				} else {
					result.put("data", "fail");
					result.put("message", "일치하는 비밀번호를 찾지 못했습니다.");
					result.put("status", 200);
				}
			
				// 맞는 PW 가 존재한다면, 비밀번호 변경 팝업을 띄우게 한다.
				Gson gson = new Gson();
				gson.toJson(result,out);
			}
		}
	}
}
