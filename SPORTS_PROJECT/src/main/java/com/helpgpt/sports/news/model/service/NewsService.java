package com.helpgpt.sports.news.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.commit;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;
import static com.helpgpt.sports.common.util.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.helpgpt.sports.like.model.dao.LikeDAO;
import com.helpgpt.sports.news.model.dao.NewsDAO;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.news.model.vo.NewsImg;
import com.helpgpt.sports.reply.model.dao.ReplyDAO;
import com.helpgpt.sports.teams.model.vo.Teams;

public class NewsService {
	NewsDAO dao = new NewsDAO();
	ReplyDAO replyDao = new ReplyDAO();
	LikeDAO likeDao = new LikeDAO();

	public News getNewsOne(int newsNum) {
		Connection conn = getConnection();
		
		// 뉴스 가져오기
		News newsInfo = dao.getNewsOne(conn, newsNum);
		
		if (newsInfo != null) {
			// 뉴스에 이미지 추가
			newsInfo = dao.getNewsImgs(conn, newsNum, newsInfo);
		}
		close(conn);
		
		return newsInfo;
	}

	public List<News> getNewsAll() {
		Connection conn = getConnection();
		
		// 뉴스 가져오기 (썸네일 자동 추가)
		List<News> newsList = dao.getNewsAll(conn);
		
		close(conn);
		
		return newsList;
	}

	public List<Teams> getAllTeams() {
		Connection conn = getConnection();
		
		List<Teams> newsList = dao.getAllTeams(conn);
		
		close(conn);
		
		return newsList;
	}

	public int modifyNews(News news) {
		Connection conn = getConnection();
		
		int result = dao.modifyNews(conn, news);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int modifyNewsImg(NewsImg image) {
		Connection conn = getConnection();
		
		int result = dao.modifyNewsImg(conn, image);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}
}
