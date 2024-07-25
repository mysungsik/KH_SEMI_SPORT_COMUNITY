package com.helpgpt.sports.news.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.helpgpt.sports.news.model.dao.NewsDAO;
import com.helpgpt.sports.news.model.vo.News;

public class NewsService {
	NewsDAO dao = new NewsDAO();

	public News getNewsOne(int newsNum) {
		Connection conn = getConnection();
		
		// 뉴스 가져오기
		News newsInfo = dao.getNewsOne(conn, newsNum);
		
		// 뉴스에 이미지 추가
		if (newsInfo != null) {
			newsInfo = dao.getNewsImgs(conn, newsNum, newsInfo);
		}
		
		close(conn);
		
		return newsInfo;
	}
}
