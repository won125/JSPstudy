<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>    
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="file1" value="${param.param1}"/>
<c:set var="file2" value="${param.param2}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 다운로드</title>
</head>
<body>
	첫번째 이미지 : <c:out value="${file1}"></c:out>
	<c:if test="${not empty file1}">
		<img alt="girl" src="${contextPath}/down.do?fileName=${file1}" width=400 height=275>
	</c:if>
	<a href="${contextPath}/down.do?fileName=${file1}">파일 내려받기</a><br>
	두번째 이미지 : <c:out value="${file2}"></c:out>
	<c:if test="${not empty file1}">
		<img alt="girl" src="${contextPath}/down.do?fileName=${file2}" width=400 height=275>
	</c:if>
	<a href="${contextPath}/down.do?fileName=${file2}">파일 내려받기</a>
</body>
</html>