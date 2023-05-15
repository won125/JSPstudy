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
		\${30 == 30 && 20 == 20} = ${30 == 30 && 20 == 20}<br>
		\${30 == 30 and 20 == 20} = ${30 == 30 and 20 == 20}<br>
		\${30 == 30 || 20 == 20} = ${30 == 30 || 20 == 20}<br>
		\${30 == 30 or 20 == 20} = ${30 == 30 or 20 == 20}<br>
		\${!(80 == 50)} = ${!(80 == 50)}<br>
		\${not(80 == 50)} = ${not(80 == 50)}<br>
		<%-- \사용시 연산이아닌 입력한 그대로의 내용이 나옴 --%>
	</h2>
</body>
</html>