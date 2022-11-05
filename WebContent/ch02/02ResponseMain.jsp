<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 로그인 </h3>
<form action="02ResponseLogin.jsp" method=get">
	아이디: <input type="text" name="id" value=""><br> 
	비번: <input type="password" name="pw" placeholder="패스워드"><br>
	<!-- id="어쩌구" & pw="123" -->
	<input type="submit" value="로그인">
</form>
기타: <input type="text">
</body>
</html>