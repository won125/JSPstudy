<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과창</title>
</head>
<body>
	<c:if test="${param.id ne null and param.id ne ''}">
		<h2>안녕하세요. ${param.id}님!!!</h2>
	</c:if>
	<c:if test="${empty param.id}">
		<h2>아이디를 입력해 주십시오.</h2>
		<a href="login.jsp">로그인 화면으로 돌아가기</a>
	</c:if>
</body>
</html>