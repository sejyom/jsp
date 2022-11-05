<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%= request.getRequestURL() %> <br>
<%= request.getRequestURI() %> <br>
<%= request.getContextPath() %>
    
<header>
	<h4> 메뉴: <a href="<%= request.getContextPath() %>">홈</a> <a href="04sub.jsp">학과소개</a> 커뮤니티 오시는길 공지사항</h4>
</header>