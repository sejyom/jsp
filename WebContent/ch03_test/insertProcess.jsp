<!-- insertProcess.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.ch03.beans.RegisterDTO" id="regBean" scope="session" />
<jsp:setProperty name="regBean" property="*" />
<jsp:useBean class="com.ch03.beans.RegisterDAO" id="regMgr" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	regMgr.insertMember(regBean);
%>
<jsp:getProperty name="regBean" property="memberid" />
<%= regBean.getPassword() %>
<%
	response.sendRedirect("index.jsp");
%>
</body>
</html>