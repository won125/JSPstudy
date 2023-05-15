<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과창</title>
</head>
<body>
	<c:set var="score" value="${param.score}"/>
	<c:choose>
		<c:when test="${empty param.score}">
			<h2>점수를 입력하지 않으셨습니다. 점수를 입력해 주십시오.</h2>
			<a href="score.jsp">점수입력창으로 돌아가기</a>
		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when test="${score ge 90 and score le 100}">
					<h2>시험 점수 : ${score}점</h2>
					<h2>결 과 : A학점</h2>
					<a href="score.jsp">점수입력창으로 돌아가기</a>
				</c:when>
				<c:when test="${score ge 80 and score le 90}">
					<h2>시험 점수 : ${score}점</h2>
					<h2>결 과 : B학점</h2>
					<a href="score.jsp">점수입력창으로 돌아가기</a>
				</c:when>
				<c:when test="${score ge 70 and score le 80}">
					<h2>시험 점수 : ${score}점</h2>
					<h2>결 과 : C학점</h2>
					<a href="score.jsp">점수입력창으로 돌아가기</a>
				</c:when>
				<c:when test="${score gt 60 and score le 70}">
					<h2>시험 점수 : ${score}점</h2>
					<h2>결 과 : D학점</h2>
					<a href="score.jsp">점수입력창으로 돌아가기</a>
				</c:when>
				<c:when test="${score le 59 and score ge 0}">
					<h2>시험 점수 : ${score}점</h2>
					<h2>결 과 : F학점</h2>
					<a href="score.jsp">점수입력창으로 돌아가기</a>
				</c:when>
				<c:otherwise>
					<h2>시험 점수 : ${score}점</h2>
					<h2>결 과 : 잘못된 입력입니다. 다시 입력해주십시오.</h2>
					<a href="score.jsp">점수입력창으로 돌아가기</a>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
</body>
</html>