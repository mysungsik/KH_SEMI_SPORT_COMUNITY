package com.helpgpt.sports.like.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.commit;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;
import static com.helpgpt.sports.common.util.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.like.model.dao.LikeDAO;
import com.helpgpt.sports.like.model.vo.Like;

public class LikeService {

	LikeDAO dao = new LikeDAO();
	
	public List<Like> getLikeAllByOneTarget(int targetTypeNo, int targetNo) {
		Connection conn = getConnection();
		List<Like> likeList = dao.getLikes(conn, targetTypeNo, targetNo);
	
		close(conn);
		
		return likeList;
	}

	public String insertLike(int targetTypeNo, int targetNo, int userNo) {
		Connection conn = getConnection();
		
		String result = null;
		
		// 기존의 Like 가 존재하는지 확인
		int checkResult = dao.checkExistLike(conn, targetTypeNo, targetNo, userNo);
		int modifyResult = 0;
		
		// 기존의 Like 존재한다면 삭제 / 없다면 추가
		if (checkResult > 0 ) {
			modifyResult = dao.deleteLike(conn, targetTypeNo, targetNo, userNo);
			result = "deleteLike";
		}else {
			modifyResult = dao.insertLike(conn, targetTypeNo, targetNo, userNo);
			result = "insertLike";
		}
		
		if (modifyResult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
