<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
	isELIgnored="false"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="infoUrl" value="member1.jsp">
	<c:param name="id" value="hong"/>
	<c:param name="pwd" value="hong1234"/>
	<c:param name="name" value="홍길동"/>
	<c:param name="email" value="hong@gmail.com"/>
</c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:url 태그 실습</title>
</head>
<body>
	<a href="${ infoUrl}">회원정보출력</a>
</body>
</html>