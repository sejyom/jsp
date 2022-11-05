<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	Class.forName("com.mysql.cj.jdbc.Driver"); // step 1 커넥터 로딩
	Connection conn = null;
	Statement stmt = null;
	
	try {
	      String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
	      String dbUser = "root";
	      String dbPass = "sejyomeee2!";
	      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	      stmt = conn.createStatement();
	      stmt.executeUpdate("delete from membertbl where memberId='" + memberId +"';");
		
	} catch(Exception e) {
		e.printStackTrace();
		System.out.println("Error");
	}finally{
		System.out.println("memberId : " + memberId);
		System.out.println("delete from membertbl where memberId= '" + memberId +"';");
		conn.close();
		stmt.close();
	}
%>
</body>
</html>