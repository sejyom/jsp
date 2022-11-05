<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");

	if(id.equals("dong")) {
		session.setAttribute("MEMBERID", id);
		response.sendRedirect("loginForm.jsp");
	}else {
		response.sendRedirect("loginForm.jsp");
	}
%>
</body>
</html>