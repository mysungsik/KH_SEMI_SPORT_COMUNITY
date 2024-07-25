package com.helpgpt.sports.news.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.helpgpt.sports.like.model.dao.LikeDAO;
import com.helpgpt.sports.news.model.dao.NewsDAO;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.reply.model.dao.ReplyDAO;

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
}
