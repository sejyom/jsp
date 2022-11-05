<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="false"%>
  	<!-- autoflush="flush" 버퍼가 차면 플러시 시키지 말고 에러 때려라
  		 사용 경우: 다 마무리되기 전까지 flush 시키지 말아야 할 경우..? false로 해놓고 Exception 처리 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= out.getBufferSize() %>
<%
	for(int i=1; i<100; i++) {
		out.println("abcdefghijklmnopqrstuvwxyz12345");
	}
%>
</body>
</html>