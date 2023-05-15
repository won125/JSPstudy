<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1234" scope="page"/>
<c:set var="name" value="홍길동" scope="page"/>
<c:set var="address" value="서울시 종로구" scope="page"/>
<c:set var="score" value="85" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl로 회원정보출력</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="yellow">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>수준</th>
		</tr>
		<c:choose>
			<c:when test="${empty name}">
				<tr align="center">
					<td colspan="5">이름을 입력해 주세요</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr align="center">
					<td>${id}</td>
					<td>${pwd}</td>
					<td>${name}</td>
					<td>${address}</td>
					<c:choose>
						<c:when test="${score gt 90}"><td>성적우수자</td></c:when>
						<c:when test="${score gt 60}"><td>성적 준수</td></c:when>
						<c:otherwise><td>성적 미흡</td></c:otherwise>
					</c:choose>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>