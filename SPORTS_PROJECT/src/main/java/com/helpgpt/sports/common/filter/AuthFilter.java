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
			
			// 2. 만약 있다면, DB 에서 token 값을 이용해 USER ID, USER PW 를 불러와 재로그인시킨다.
		    if (existSessionID != null) {
		    	// DB 에서 값을 불러와 재로그인시키는 로직
		    }
		}
		
		chain.doFilter(request, response);
	}
}
