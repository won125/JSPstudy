<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
	<h2>에러 내용</h2>
	<h3><%=exception.toString() %></h3>
	<h3>숫자만 입력가능합니다. 다시 시도해보세요. => <a href="adder01.html">처음으로 돌아가기</a></h3>
	
</body>
</html>