<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "홍길동";
%> 
<%
// javascript 주석
String age = request.getParameter("age"); //클라이언트로부터 값을 받는다.
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 실습</title>
</head>
<body>
	<!-- html 주석입니다. -->
	<h2>여러분 안녕하세요 제 이름은 <%=name %>입니다.</h2>
	<h2>나이는 <%=age %>입니다.</h2>
	<h2>제 신장은 <%=175 %>cm 입니다.</h2>
	<h2>10년 후의 제 나이는 <%=Integer.parseInt(age)+10 %>입니다.</h2><%-- 스크립트릿 주석 --%>
	
	
</body>
</html>