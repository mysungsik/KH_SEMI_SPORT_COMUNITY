package com.helpgpt.sports.report.model.dao;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.helpgpt.sports.report.model.vo.Report;

public class ReportDAO {
	Properties prop;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public ReportDAO() {
		try {
			prop = new Properties();
			String defaultpath = "/com/helpgpt/sports/common/sqls/";
			String filepath = ReportDAO.class.getResource(defaultpath + "report-sql.xml").getPath();
			FileInputStream fis = new FileInputStream(filepath);
			prop.loadFromXML(fis);
		} catch (Exception e) {
			System.err.println("[ERROR] Load to report-sql.xml");
			e.printStackTrace();
		}
	}
	public List<Report> getReportAll(Connection conn) {
		
		List<Report> reportList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getReportAll");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				int reportNo = rs.getInt("REPORT_NO");
				int userNo = rs.getInt("USER_NO");
				String userName = rs.getString("USER_NAME");
				String userId = rs.getString("USER_ID");
				int reportTypeNo = rs.getInt("REPORT_TYPE_NO");
				String reportTypeName = rs.getString("REPORT_TYPE");
				int reportTargetNo = rs.getInt("TARGET_NO");
				String reportTargetTitle  = rs.getString("TARGET_TITLE");
				String reportTargetContent = rs.getString("TARGET_CONTENT") != null ? rs.getString("TARGET_CONTENT") : "";
				int violationTypeNo = rs.getInt("VIO_TYPE_NO");
				String violationTypeName = rs.getString("VIO_TYPE");
				String reportContent = rs.getString("REPORT_CONTENT");
				String reportDt = rs.getDate("REPORT_DT").toString();
				String reportStatus = rs.getString("REPORT_ST");
				
				Report report = new Report(reportNo, userNo, userName, userId, 
						reportTypeNo, reportTypeName, reportTargetNo, reportTargetTitle, reportTargetContent, violationTypeNo, 
						violationTypeName, reportContent, reportDt, reportStatus);
				
				reportList.add(report);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] Failed to get Reports");
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return reportList;
	}
	public List<Report> setTargetContents(Connection conn, List<Report> reportList) {

		
		return null;
	}

}
