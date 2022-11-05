<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="01forwardTo.jsp" method="post">
	이름: <input type=text name="name" placeholder="홍길동"><br>
	색 선택:
	<select name="color">
		<option value="blue">파랑색</option>
		<option value="red">빨강색</option>
	</select><br>
	<input type=submit value="확인">
</form>
</body>
</html>