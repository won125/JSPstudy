<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	List dataList = new ArrayList();
	dataList.add("홍길동");
	dataList.add("안녕하세요");
	dataList.add(25);
%>
<c:set var="list" value="<%=dataList %>" scope="page"/>
<c:set var="fruits" value="사과,배,키위,두리안,망고,바나나"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl 반복문</title>
</head>
<body>
	<h2>*** 7단 ***</h2>
	<c:forEach var="i" begin="1" end="9" step="1">
		<h2>7 X ${i} = ${7*i}</h2>
	</c:forEach>
	<c:forEach var="i" begin="1" end="9" step="1" varStatus="loop">
		<h2>i = ${i} 안녕하세요. 반복횟수 : ${loop.count}</h2>
	</c:forEach>
	<c:forEach var="data" items="${list}">
		<h2>${data }</h2>
	</c:forEach>
	<c:forTokens var="token" items="${fruits}" delims=",">
		<h2>${token}</h2>
	</c:forTokens>
</body>
</html>