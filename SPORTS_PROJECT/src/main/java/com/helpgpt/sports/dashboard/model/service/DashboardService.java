package com.helpgpt.sports.dashboard.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.dashboard.model.dao.DashboardDAO;

public class DashboardService {
	DashboardDAO dao = new DashboardDAO();

	public List<Community> getDashboardCommunity(int commType, int limit) {
		Connection conn = getConnection();
		List<Community> boardList = dao.getDashboardCommunity(conn, commType, limit);

		close(conn);

		return boardList;
	}
	
}
