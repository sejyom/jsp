<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String i = request.getParameter("id");
	String p = request.getParameter("pw");
	
	if (i.equals("dong") && p.equals("12")) {
		// 성공
		session.setAttribute("memberId", "ok"); // memberId = "ok"
		session.setAttribute("idAtt", i);
		response.sendRedirect("01loginForm.jsp");
	} else {
		// 실패
		response.sendRedirect("01loginForm.jsp");
	}
%>