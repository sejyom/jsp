<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
   request.setCharacterEncoding("utf-8");

   String memberId = request.getParameter("memberId");
   String password = request.getParameter("password");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   Class.forName("com.mysql.cj.jdbc.Driver"); // step 1 커넥터 로딩
   Statement stmt = null;
   Connection conn = null;
   
   
   try {
      String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
      String dbUser = "root";
      String dbPass = "sejyomeee2!";
      // DriverManager.getConnection(Db서버주소/사용할db명, 계정, 비번); 커넥션 객체 연결
      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); // step 2 DB 연결
      stmt = conn.createStatement(); // step 3 stmt 변수로 쿼리 실행할 Statement 객체 획득
      stmt.executeUpdate("insert into membertbl values(' " + memberId + " ',' " + password + " ',' " + name + " ',' " + email + " '); ");
      // select 쿼리 이외의 쿼리 실행문(insert구문 등)
      
   } catch(Exception e) {
      
   } finally {
      conn.close();
      stmt.close();
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