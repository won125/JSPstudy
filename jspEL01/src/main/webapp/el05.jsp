<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspEL01.ex01.*"
    %>
<jsp:useBean id="memBean" class="jspEL01.ex01.MemberBean" scope="page"/>
<jsp:setProperty name="memBean" property="name" value="홍길동"/>
<jsp:useBean id="list" class="java.util.ArrayList" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 연산자</title>
</head>
<body>
	<h2>MemberBean 객체 설정 => ${empty memBean}</h2>
	<h2>MemberBean 객체 설정 => ${not empty memBean}</h2>
	<h2>ArrayList 객체 설정 => ${empty list}</h2>
</body>
</html>