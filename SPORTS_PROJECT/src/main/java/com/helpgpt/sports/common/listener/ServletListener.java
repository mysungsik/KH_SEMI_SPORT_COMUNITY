package com.helpgpt.sports.common.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ServletListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {

        ServletContext servletContext = sce.getServletContext();
        String contextPath = servletContext.getContextPath();
        servletContext.setAttribute("contextPath", contextPath);
	}
}
