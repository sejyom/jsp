<!-- 01insertForm.jsp --> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertProcess.jsp" method="post">
	아이디 : <input type="text" name="memberid"><br>
	암호 : <input type="password" name="password"><br>
	이름 : <input type="text" name="name"><br>
	이메일 : <input type="text" name="email"><br>
	<input type="submit" value="삽입">
</form>
</body>
</html>