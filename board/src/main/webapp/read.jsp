<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.*, board.*"
   	isELIgnored="false"
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%-- 포맷팅 fmt태그 초기화 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%-- el c태그 초기화 --%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="BoardViewForm" method="post" >
		<table border="1"  width="400" height="400"> 
			<tr> 
				<td width="100">작 성 자</td>
				<td colspan="3">${name}</td>
			</tr>
			<tr>
				<td> 작성일 </td>	
				<td>${regdate}</td>
			</tr>
			<tr> 
				<td> 제 목</td>
				<td>${subject}</td>
			</tr>
			<tr>
				<td> 내 용 </td> 
				<td>${content}</td>
			</tr>
			<tr>
				<td colspan="4" align="center"> 조회수  : ${count}</td>
			</tr>
			<tr>
		</table>
			<input type="button" value="목록" onclick="location.href='list.jsp';"> | 
			<input type="button" value="수정" onclick="location.href='update.jsp';"> |
			<input type="button" value="삭제" onclick="location.href='delete.jsp';"><br>
	</form>
</body>
</html>