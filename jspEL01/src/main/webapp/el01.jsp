<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 실습</title>
</head>
<body>
	<h1>표현언어로 여러 형태의 데이터 출력</h1>
	<h2>숫자 값 : ${500}<br>
		홍길동님 ${"안녕하세요"}<br>
		연산 => ${40+21}<br>
		불린값 => ${false}<br>
		실수값 => ${5.3}<br>
		연산 => ${"10"+1}<br>
		<!--숫자문자 => ${"철수"+23}<br>-->
		<!-- 문자문자 => ${"철수"+"안녕"}<br> -->
	</h2>
</body>
</html>