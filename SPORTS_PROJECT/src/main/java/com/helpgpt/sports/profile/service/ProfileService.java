package com.helpgpt.sports.profile.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.commit;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;
import static com.helpgpt.sports.common.util.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.profile.model.dao.ProfileDAO;
import com.helpgpt.sports.profile.model.vo.LoginHistory;

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

}
