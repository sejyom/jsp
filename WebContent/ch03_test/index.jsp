<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.ch03.beans.RegisterDTO" id="regBean" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if (regBean.getMemberid() != null) {
		out.println(regBean.getMemberid() + "님안뇽"); %>
<form action="01insertForm.jsp" method="post">
<input type="submit" value="join" />
</form>


<form action="01loginForm.jsp" method="post">
<input type="submit" value="login" />
<%
	} else {
		out.println("초기상태");
%>
<form action="01insertForm.jsp" method="post">
<input type="submit" value="join" />
</form>


<form action="01loginForm.jsp" method="post">
<input type="submit" value="login" />
<%} %>
</form>
</body>
</html>