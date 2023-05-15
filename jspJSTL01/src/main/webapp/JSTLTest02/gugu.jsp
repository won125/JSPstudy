<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 입력 창</title>
</head>
<body>
	<h2>구구단 - 출력하고 싶은 단을 입력하시오</h2>
	<form action="g-result.jsp">
		단 : <input type="text" name="dan"><br>
		<input type="submit" value="구구단 출력">
		<input type="reset" value="다시 입력">
	</form>
</body>
</html>