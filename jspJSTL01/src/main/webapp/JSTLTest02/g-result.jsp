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
	<c:set var="dan" value="${param.dan}"/>
	<table border="1" align="center">
		<tr>
			<th> *** ${dan} *** </th>
		</tr>
		<c:forEach var="index" begin="1" end="9" step="1">
			<tr>	
				<td>${dan} X ${index} = ${dan*index}</td>
			</tr>	
		</c:forEach>
		
	</table>

</body>
</html>