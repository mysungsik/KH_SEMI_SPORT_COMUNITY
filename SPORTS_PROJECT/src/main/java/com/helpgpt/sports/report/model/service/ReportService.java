package com.helpgpt.sports.report.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.commit;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;
import static com.helpgpt.sports.common.util.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.report.model.dao.ReportDAO;
import com.helpgpt.sports.report.model.vo.Report;

public class ReportService {
	ReportDAO dao = new ReportDAO();
	
	public List<Report> getReportAll() {
		Connection conn = getConnection();
		List<Report> reportList = dao.getReportAll(conn);
	
		close(conn);
		
		return reportList;
	}

	public int insertReport(User loginUser, int targetTypeNo, int reportTargetNo, int reportVioType, String reportContent) {
		Connection conn = getConnection();
		int insertResult = dao.insertReport(conn, loginUser.getUserNo(), targetTypeNo, reportTargetNo, reportVioType, reportContent);

		if (insertResult >0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);
		return insertResult;
	}

}
