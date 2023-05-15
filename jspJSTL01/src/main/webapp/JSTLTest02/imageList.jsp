<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 리스트창</title>
<style type="text/css">
	h2 {
	text-align: center;
	}
</style>
</head>
<body>
	<h2>상품 목록 리스트</h2>
	<table border="1" width="600" align="center">
		<tr align="center">
			<th>상품 이름</th>
			<th>상품 이미지</th>
			<th>상품 선택하기</th>
		</tr>
		<c:forEach var="i" begin="0" end="7" step="1">
			<tr align="center">
				<td width="200">
					<img alt="#" src="../images/${i}.png"/>
				</td>
				<td width="200">
					이미지 이름 : 가나다${i}
				</td>
				<td width="200">
					<input type="checkbox" name="chk${i}">
				</td>
			</tr>
		</c:forEach>
		
	</table>

</body>
</html>