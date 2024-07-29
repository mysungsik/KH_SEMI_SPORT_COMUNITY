package com.helpgpt.sports.profile.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.commit;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;
import static com.helpgpt.sports.common.util.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.profile.model.dao.ProfileDAO;
import com.helpgpt.sports.profile.model.vo.LoginHistory;
import com.helpgpt.sports.reply.model.vo.Reply;

public class ProfileService {
	ProfileDAO dao = new ProfileDAO();

	public List<LoginHistory> getUserHistory(int loginUserNo) {
		List<LoginHistory> historyList = null;
		Connection conn = getConnection();
		
		historyList = dao.getUserHistory(conn, loginUserNo);

		close(conn);
		
		return historyList;
	}

	public int changeUserProfileImg(int userNo, String originalFileName, String renamedFile) {
		Connection conn = getConnection();
		
		int result = dao.changeUserProfileImg(conn, userNo, originalFileName, renamedFile);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int resetUserProfileImg(int userNo, String defaultFilePath) {
		Connection conn = getConnection();
		
		int result = dao.resetUserProfileImg(conn, userNo, defaultFilePath);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public List<Reply> getMycomments(int userNo) {
		Connection conn = getConnection();
		List<Reply> replyList = dao.getMycomments(conn, userNo);

		close(conn);

		return replyList;
	}

	public List<Community> getMyCommunity(int userNo) {
		Connection conn = getConnection();
		List<Community> boardList = dao.getMyCommunity(conn, userNo);

		close(conn);

		return boardList;
	}

	public List<News> getMyNewsLiked(int userNo) {
		Connection conn = getConnection();
		List<News> newsList = dao.getMyNewsLiked(conn, userNo);

		close(conn);

		return newsList;
	}

}
