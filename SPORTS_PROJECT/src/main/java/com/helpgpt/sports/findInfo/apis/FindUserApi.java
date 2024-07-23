package com.helpgpt.sports.findInfo.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.helpgpt.sports.common.util.SendMail;
import com.helpgpt.sports.findInfo.model.service.FindInfoService;

/**
 * Servlet implementation class FindUser
 */
@WebServlet("/api/findUser/*")
public class FindUserApi extends HttpServlet {
	FindInfoService service = new FindInfoService();
	final String defaultURLPath = "/WEB-INF/views/findInfo/";

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
				String inputEmail = request.getParameter("find_email");
				String inputName = request.getParameter("find_name");
				
				String userId = null;
			
				userId = service.findUserId(inputEmail, inputName);
				
				if (userId != null) {
					RequestDispatcher dispatcher = request.getRequestDispatcher(defaultURLPath + "findResult.jsp");
					request.setAttribute("userId", userId);
					request.setAttribute("userEmail", inputEmail);
					request.setAttribute("userName", inputName);
					dispatcher.forward(request, response);
				} else {
					RequestDispatcher dispatcher = request.getRequestDispatcher(defaultURLPath + "findId.jsp");
					request.setAttribute("message", "일치하는 유저가 존재하지 않습니다.");
					dispatcher.forward(request, response);
				}
			};break;
			
			case "findPw" : {
				String inputId = request.getParameter("inputId");
				String inputEmail = request.getParameter("inputEmail");
				
				int foundUserNo = service.findUserPw(inputId, inputEmail);	// 0이면 유저 못찾은것
				
				if (foundUserNo > 0) {
					
					String mailCheckUUID = UUID.randomUUID().toString();
					service.updateMailUUID(foundUserNo, mailCheckUUID);	// 메일 체크에 넣기
					
					ServletContext servletContext = request.getServletContext();
					String mailTestId = servletContext.getInitParameter("mailTestId");
				 	String mailTestPw = servletContext.getInitParameter("mailTestPw");
				        
					SendMail.googleMailSend(mailTestId, mailTestPw, inputEmail, "비밀번호 인증 메일입니다.", "입력해주세요 " + mailCheckUUID); // 메일 전송
			      
					result.put("data", foundUserNo);
					result.put("message", "일치하는 비밀번호를 찾았습니다.");
					result.put("status", 200);
				} else {
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
