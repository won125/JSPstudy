<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>    
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 다운로드 요청 창</title>
</head>
<body>
	<form action="download.jsp" method="post" enctype="multipart/form-data">
		<input type="hidden" name="param1" value="first.jpg">
		<input type="hidden" name="param2" value="girl.jpg">
		<input type="submit" value="이미지 다운로드">
	</form>
</body>
</html>