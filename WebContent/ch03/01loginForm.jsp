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
	String loginCheck = (String)session.getAttribute("memberId"); // Object 타입의 value라서.. 캐스팅해줘야함★★★
	String loginId = (String)session.getAttribute("idAtt");
	
	if (loginCheck == null) { // setAttribute()를 안 한 상태에서 getAttribute()를 하면 에러 아니고,, 그냥 null 반환
		// 로그인을 안 한 상태!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! (전)
%>
		<form action="01loginProcess.jsp" method="post">
			아이디: <input type="text" name="id"><br>
			비 번: <input type="text" name="pw"><br>
			<input type="submit" value="로그인">
		</form>
<%
	} else {
		// 로그인을 한 상태!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! (후)
%>
		<%= loginId %>님, 환영합니다!
		<form action="01logout.jsp" method="post">
			<input type="submit" value="로그아웃">
		</form>
<%	
	}
%>

</body>
</html>