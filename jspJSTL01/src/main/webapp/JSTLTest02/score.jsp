<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험점수 입력 창</title>
</head>
<body>
	<h2>시험점수를 입력해주세요!!!</h2>
	<form action="s-result.jsp">
		시험점수 : <input type="text" name="score"><br>
		<input type="submit" value="학점변환">
		<input type="reset" value="다시 입력">
	</form>
</body>
</html>