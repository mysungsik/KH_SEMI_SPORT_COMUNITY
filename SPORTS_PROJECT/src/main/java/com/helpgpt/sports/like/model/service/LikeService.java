package com.helpgpt.sports.like.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;

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
}
