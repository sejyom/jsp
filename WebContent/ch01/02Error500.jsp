<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="02ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어-errorPage, isErrorPage속성</title>
</head>
<body>
<%
	// int myAge = Integer.parseInt("15") + 10;
	int myAge=Integer.parseInt(request.getParameter("age")) + 10;
	out.println("10년후 나이는 " + myAge + "입니다.");
%>
</body>
</html>