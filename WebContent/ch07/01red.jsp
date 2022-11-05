<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 
<%= request.getParameter("n") %>님이 좋아하는 색은 
<%= request.getParameter("sc") %>이고, 생명을 상징하는 색입니다.
</h1>
</body>
</html>