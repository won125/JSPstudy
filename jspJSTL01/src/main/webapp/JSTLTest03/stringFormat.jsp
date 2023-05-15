<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷태그 라이브러리</title>
</head>
<body>
	<c:set var="title" value="computer"/>
	<h2>
		문자열의 길이 = ${fn:length(title)}<br>
		문자를 대문자로 = ${fn:toUpperCase(title)}<br>
		문자를 소문자로 = ${fn:toLowerCase(title)}<br>
		일부 문자만 = ${fn:substring(title,3,6)}<br>
		문자 위치 = ${fn:indexOf(title,"mp")}<br>
	</h2>
</body>
</html>