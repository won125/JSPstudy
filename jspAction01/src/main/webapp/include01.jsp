<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션 태그</title>
</head>
<body>
	<h1>가나 쇼핑몰</h1>
	 <!-- flush 버퍼를 비우는지 여부(true:버퍼를 비움, false:버퍼를 비우지 않음) -->
	<jsp:include page="img_inc.jsp" flush="true" >
		<jsp:param value="사람" name="name"/>
		<jsp:param value="사람.gif" name="imgName"/>
	</jsp:include>
	<p>저희 쇼핑몰을 자주 찾아와 주세요.</p>
</body>
</html>