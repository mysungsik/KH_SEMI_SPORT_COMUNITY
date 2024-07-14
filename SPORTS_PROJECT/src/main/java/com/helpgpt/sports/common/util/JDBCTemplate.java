package com.helpgpt.sports.common.util;

import javax.naming.Context;
import javax.naming.InitialContext;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;


public class JDBCTemplate {
    // 전 프로젝트에 공유하기 위해 Static 으로 생성
    
	public static Connection getConnection() {
		Connection conn = null;
        try {
	         
	        Context initContext = new InitialContext();
	        Context envContext = (Context)initContext.lookup("java:/comp/env");
	        DataSource ds = (DataSource)envContext.lookup("jdbc/oracle");
	          
	        conn = ds.getConnection();
	        conn.setAutoCommit(false);

        } catch (Exception e) {
        	e.printStackTrace();
        	System.err.println("[ERROR] : 연결중 오류 발생");
        }
        return conn;
    }
    
    // 커넥션 종료
    public static void close(Connection conn) {
        try {
            // 참조하는 커넥션이 있으면서, 닫혀있지 않은 경우, 닫는다.
            if(conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (Exception e) {
            System.out.println("[ERROR] : Connection 종료중 오류 발생");
            e.printStackTrace();
        }
    }
    
    // Statement 종료
    public static void close(Statement stmt) {
        try {
            // 참조하는 Statement 가 있으면서, 닫혀있지 않은 경우, 닫는다.
            if(stmt != null && !stmt.isClosed()) {
                stmt.close();
            }
        } catch (Exception e) {
            System.out.println("[ERROR] : Statement 종료 중 오류 발생");
            e.printStackTrace();
        }
    }
    
    // ResultSet 종료
    public static void close(ResultSet rs) {
        try {
            // 참조하는 Statement 가 있으면서, 닫혀있지 않은 경우, 닫는다.
            if(rs != null && !rs.isClosed()) {
                rs.close();
            }
        } catch (Exception e) {
            System.out.println("[ERROR] : ResultSet 종료 중 오류 발생");
            e.printStackTrace();
        }
    }
    
    // COMMIT
    public static void commit(Connection conn) {
        try {
            // 참조하는 Connection이 있으면서, 닫혀있지 않은 경우, commit 한다.
            if(conn != null && !conn.isClosed()) {
                conn.commit();
            }
        } catch (Exception e) {
            System.out.println("[ERROR] : Commit 중 오류 발생");
            e.printStackTrace();
        }
    }   
    
    // ROLLBACK
    public static void rollback(Connection conn) {
        try {
            // 참조하는 Connection이 있으면서, 닫혀있지 않은 경우, commit 한다.
            if(conn != null && !conn.isClosed()) {
                conn.rollback();
            }
        } catch (Exception e) {
            System.out.println("[ERROR] : Rollback 중 오류 발생");
            e.printStackTrace();
        }
    }   
}