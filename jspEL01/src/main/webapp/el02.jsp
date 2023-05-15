<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 실습</title>
</head>
<body>
	<h1>표현언어로 여러 형태의 데이터 출력</h1>
	<h2>
		\${20+30} = ${20+30}<br>
		\${50-21} = ${50-21}<br>
		\${4*6} = ${4*6}<br>
		\${99/23} = ${99/23}<br>
		\${25 div 3} = ${25 div 3}<br>
		\${25%3} = ${25%3}<br>
		\${25 mod 3} = ${25 mod 3}
		<%-- \사용시 연산이아닌 입력한 그대로의 내용이 나옴 --%>
	</h2>
</body>
</html>