<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션태그</title>
</head>
<body>
	<jsp:forward page="img_inc.jsp">
		<jsp:param value="표범" name="name"/>
		<jsp:param value="표범.gif" name="imgName"/>
	</jsp:forward>
</body>
</html>