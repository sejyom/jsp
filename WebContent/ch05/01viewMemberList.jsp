<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% 

   Class.forName("com.mysql.cj.jdbc.Driver"); // step 1 커넥터 로딩
   Connection conn = null;
   Statement stmt = null;
   PreparedStatement pstmt = null;
   
   try {
      String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
      String dbUser = "root";
      String dbPass = "sejyomeee2!";
      // DriverManager.getConnection(Db서버주소/사용할db명, 계정, 비번); 커넥션 객체 연결
      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); // step 2 DB 연결
     /*  stmt = conn.createStatement(); // step 3 stmt 변수로 쿼리 실행할 Statement 객체 획득
      ResultSet rs = stmt.executeQuery("select * from membertbl;"); */
      
      pstmt = conn.prepareStatement("select * from membertbl;");
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
    	  // 다음 값이 있으면 true 리턴해서 while문 실행 ... 트루 리턴하면서 다음 레코드를 가리키게 됨
    	  out.println(rs.getString("memberId") + ", ");
    	  out.println(rs.getString("password") + ", ");
    	  out.println(rs.getString("name") + ", ");
    	  out.println(rs.getString("email") + "<br>");
    	  // type - varchar: getString() | int: getInt() | blob: getBlob() 
      }
      
      
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