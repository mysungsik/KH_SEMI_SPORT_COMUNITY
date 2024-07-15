package com.helpgpt.sports.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.login.model.service.UserService;
import com.helpgpt.sports.login.model.vo.User;

@WebFilter("/*")
public class AuthFilter extends HttpFilter implements Filter {
	
	public void init(FilterConfig fConfig) throws ServletException {}
       
	public void destroy() {}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;

		String existSessionID = null;
		Cookie[] cookies =  req.getCookies();
		
		if (cookies != null) {
			// 1. 기존 세션ID 저장 쿠키인 rememberLogin 를 가져온다.
		    for (Cookie cookie : cookies) {
		        if (cookie.getName().equals("rememberLogin")) {
		        	existSessionID = cookie.getValue();
		            break;
		        }
		    }
			
			// 2. 해당 쿠키 존재 + 로그인하지 않아있음 -> 로그인처리
		    HttpSession session = req.getSession(false);
		    User loginUser = null;
		    
		    if (session != null) {
		    	loginUser = (User) session.getAttribute("loginUser");
		    }
		    
		    if (existSessionID != null && loginUser == null) {
		    	// 1. DB 에서 USER INFO 가져온다
		    	UserService service = new UserService();
		    	User loginInfo = service.getLoginInfoFromSessionUUID(existSessionID);
		    	
		    	// 2. 로그인처리한다.
		    	if (loginInfo != null) {
		    		loginUser = service.userLogin(loginInfo);
		    	}
		    	
		    	if (loginUser != null) {
		    		session = req.getSession();
		    		session.setMaxInactiveInterval(300);
		    		session.setAttribute("loginUser", loginUser);
		    	} else {
		    		
		    	}

		    }
		}
		
		
		chain.doFilter(request, response);
	}
}
