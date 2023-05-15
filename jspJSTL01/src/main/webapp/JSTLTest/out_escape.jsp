<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
	isELIgnored="false"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>escape 문자 변환 실습</title>
</head>
<body>
	<h2>escape 문자 변환</h2>
	<pre>
		<c:out value="&lt;" escapeXml="true"/>
		<c:out value="&lt;" escapeXml="false"/>
		<c:out value="&gt;" escapeXml="true"/>
		<c:out value="&gt;" escapeXml="false"/>
	</pre>
</body>
</html>