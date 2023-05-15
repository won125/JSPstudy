<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	String name = request.getParameter("name");
    	String imgName = request.getParameter("imgName");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그 실습</title>
</head>
<body>
	<h2>이름은 <%=name %> 입니다.</h2>
	<img alt="사람" src="./images/<%=imgName %>"/>
</body>
</html>