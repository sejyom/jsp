<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% 

	request.setCharacterEncoding("UTF-8");
	 String name = request.getParameter("name");
	 String memberId = request.getParameter("memberId");

   Class.forName("com.mysql.cj.jdbc.Driver"); // step 1 커넥터 로딩
   PreparedStatement pstmt = null;
   Connection conn = null;
   
   
   try {
      String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
      String dbUser = "root";
      String dbPass = "sejyomeee2!";
      // DriverManager.getConnection(Db서버주소/사용할db명, 계정, 비번); 커넥션 객체 연결
      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); // step 2 DB 연결
      pstmt = conn.prepareStatement("update membertbl set name=? where memberId=?;");
      pstmt.setString(1, name);
      pstmt.setString(2, memberId);
      pstmt.executeUpdate();
      
   } catch(Exception e) {
      
   } finally {
      conn.close();
      pstmt.close();
   }
   
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>