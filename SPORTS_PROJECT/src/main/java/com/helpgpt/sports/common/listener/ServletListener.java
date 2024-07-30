package com.helpgpt.sports.common.listener;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.helpgpt.sports.login.model.service.UserService;

// 리스너 애노테이션으로 등록
@WebListener
public class ServletListener implements ServletContextListener {
	// volatile : 변수를 Main Mememory 에 write / read 한다.
	//			: MultiThread 애플리케이션에서 성능향상시 MainMemory 에 읽은 변수값을 CPU CACHE 에 저장하는데
	//			: 여러 Thread 에서 CPU Cache 의 저장된 값이 다르므로, 변수 값 불일치 문제가 발생할 수 있어서 사용
	
	// ScheduledExecutorService : 자바에서 스케줄링 서비스를 이용할때 사용하는 인터페이스
	private volatile ScheduledExecutorService executor;
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext servletContext = sce.getServletContext();
		
		// [메일]TLS 프로토콜 추가 설정 (JDK 8 이상에서 TLS 1.2 사용)
        System.setProperty("https.protocols", "TLSv1.2");

        // [메일] ID 비밀번호 가져오기 (From web.xml)
        String mailTestId = servletContext.getInitParameter("mailTestId");
        servletContext.setAttribute("mailTestPw", mailTestId); 
        String mailTestPw = servletContext.getInitParameter("mailTestPw");
        servletContext.setAttribute("mailTestPw", mailTestPw); 
        
        
		// 톰캣 시작시 application Scope 에 contextPath 넣기
        
        String contextPath = servletContext.getContextPath();
        servletContext.setAttribute("contextPath", contextPath); 
        
        // 서비스 생성, 현재 시간
        UserService service = new UserService();
        
        // 쓰레드에서 실행할 Method 를 생성
        Runnable task = () -> {
        	service.deleteUserInfo();
        };

        // 매시간 스케줄링 하여 DB DELETE 시작
        executor = Executors.newScheduledThreadPool(2);	// Thread 개수
        executor.scheduleAtFixedRate(task, 30, 30, TimeUnit.MINUTES);	// 실행시킬 메소드, 초기지연, 주기, 타임유닛
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// 명시적으로 executor 종료
		final ScheduledExecutorService executor = this.executor;
		
		if (executor != null) {
			executor.shutdownNow();	// 반드시 executor 를 종료해야한다. 종료하지 않으면 영원히 Thread 에서 대기상태일수 있다.
			this.executor = null;	// executor 를 null 처리한다.
		}
	}
}
