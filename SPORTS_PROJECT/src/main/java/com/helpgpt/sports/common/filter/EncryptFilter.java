package com.helpgpt.sports.common.filter;

import javax.servlet.annotation.WebFilter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;


/**
 * Servlet Filter implementation class EncrypFilter
 */
@WebFilter(filterName = "EncryptFilter", 
			urlPatterns = {
				"/api/user/login",
				"/api/sign/*",
				"/api/updateUser/*"
			}
)
public class EncryptFilter extends HttpFilter implements Filter {
	public void init(FilterConfig fConfig) throws ServletException {}
	
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	    // 비밀번호는 파라미터에 담김 -> HttpServletRequest 에 담겨있음 -> req 를 받자마자 암호화 될 수 있도록 오버라이딩
        HttpServletRequest req = (HttpServletRequest)request;
        EncryptWrapper wrapper = new EncryptWrapper(req);
        
        // request 대신 request 를 오버라이딩한 wrapper 로 이제 request 를 대신하도록 넘겨줌 
        chain.doFilter(wrapper, response);
    }

}
