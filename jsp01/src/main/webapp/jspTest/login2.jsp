<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인 정보</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwd");
	%>
	
	<h2>접속한 아이디 : <%=id %></h2>
	<h2>접속한 아이디의 비밀번호 : <%=pwd %></h2>
</body>
</html>