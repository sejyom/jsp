<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("utf-8");
String na = request.getParameter("name");
String selectColor = request.getParameter("color");
String selectPage = "01" + selectColor + ".jsp";
%>
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="<%= selectPage %>">
	<jsp:param value="<%= selectColor %>" name="sc" />
	<jsp:param value="<%= na %>" name="n" />
</jsp:forward>
</body>
</html>