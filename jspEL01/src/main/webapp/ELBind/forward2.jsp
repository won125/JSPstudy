<%@page import="jspEL01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	MemberBean member = new MemberBean("son","1234","손흥민","son@naver.com");
	request.setAttribute("member", member);
%>
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워딩 연습</title>
</head>
<body>
	<jsp:forward page="member2.jsp"></jsp:forward>
</body>
</html>