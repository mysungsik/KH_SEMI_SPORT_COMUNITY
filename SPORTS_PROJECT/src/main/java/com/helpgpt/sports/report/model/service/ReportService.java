package com.helpgpt.sports.report.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

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

}
