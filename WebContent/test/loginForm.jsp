<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int i=1; %>
<%
	String id = (String)session.getAttribute("MEMBERID");

if (id==null) {
	i=0;
	System.out.println(i);
%>
	<form action="loginProcess.jsp" method="post">
	아이디: <input type="text" name="id"><br>
	<input type="submit" value="로그인">
	</form>
<%
}
else {
	out.println(id + "님,");
%>
	<form action="logoutProcess.jsp" method="post">
	<input type="submit" value="logout">
	</form>
<%
}
%>
</body>
</html>