<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String i = request.getParameter("id");
	String p = request.getParameter("pw");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 너의 아이디는 <%= i %>, 비번은 <%= p %>이다.</h3>
<%
	if(i.equals("dong") && p.equals("123")) {
		// 로그인 성공
		/* response.sendRedirect("02ResponseWelcome.jsp"); */
%>
		<jsp:forward page="02ResponseWelcome.jsp" />
<%
	}
	else { // 로그인 실패
%>
		<jsp:forward page="02ForwardFail.jsp"/>
<%		
	}
%>
</body>
</html>