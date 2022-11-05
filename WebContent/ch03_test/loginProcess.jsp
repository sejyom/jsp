<!-- insertProcess.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.ch03.beans.*"%>
<jsp:useBean class="com.ch03.beans.RegisterDTO" id="regBean" scope="session" />
<jsp:setProperty name="regBean" property="*" />
<jsp:useBean class="com.ch03.beans.RegisterDAO" id="regMgr" scope="session" />
<%
	RegisterDTO regDto = new RegisterDTO();
	String id = request.getParameter("memberid");
	String pw = request.getParameter("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	regDto = regMgr.checkDB(id);
	if(regDto.getMemberid() != null){
		regBean = regDto;
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("01loginForm.jsp");
	}
%>
</body>
</html>