//RegisterDAO.java
package com.ch03.beans;

import java.sql.*;

public class RegisterDAO {
	String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
    String dbUser = "root";
    String dbPass = "sejyomeee2!";
    PreparedStatement pstmt = null;
    Connection conn = null;
    
    public RegisterDAO() {
    	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    public void insertMember(RegisterDTO mem) throws SQLException {
    	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); // step 2 DB 연결
        pstmt = conn.prepareStatement("insert into membertbl values(?, ?, ?, ?);");

        pstmt.setString(1, mem.getMemberid() );
        pstmt.setString(2, mem.getPassword() );
        pstmt.setString(3, mem.getName() );
        pstmt.setString(4, mem.getEmail() );
        pstmt.executeUpdate(); 
    }
    
    
    public RegisterDTO selectMember() throws SQLException {
    	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); // step 2 DB 연결
    	
    	RegisterDTO reg = new RegisterDTO();
    	
        pstmt = conn.prepareStatement("select * from membertbl;");
        
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
        	reg.setMemberid(rs.getString("memberid"));
        	reg.setPassword(rs.getString("password"));
        	reg.setName(rs.getString("name"));
        	reg.setEmail(rs.getString("email"));
        }
        return reg;
    }
    
    public RegisterDTO checkDB(String id) throws SQLException{
    	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); // step 2 DB 연결
    	
    	RegisterDTO reg = new RegisterDTO();
    	
        pstmt = conn.prepareStatement("select * from membertbl where memberid = '"+id+"';");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
        	reg.setMemberid(rs.getString("memberid"));
        	reg.setPassword(rs.getString("password"));
        	reg.setName(rs.getString("name"));
        	reg.setEmail(rs.getString("email"));
        }
        return reg;
    	
    }
}
