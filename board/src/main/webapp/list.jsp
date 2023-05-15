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
<title>게시판 목록</title>
</head>
<body>
	<table width="800" height="100" border="2" bgcolor="#D8D8D8">
	<caption>게시판</caption>	
		<tr>
			<th>번 호</th>
			<th>제 목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조 회 수</th>
		</tr>
		<c:choose>
			<c:when test="${boardList == null}">
				<tr align="center" bgcolor="lightgreen">
					<td colspan="5">
					등록되어있는 회원정보가 존재하지 않습니다.
					</td>
				</tr>		
			</c:when>
			<c:otherwise>
				<c:forEach var="board" items="${boardList}">
					<tr align="center">
						<td>${board.num}</td>
						<td>${board.subject}</td>
						<td>${board.name}</td>
						<td>${board.regdate}</td>
						<td>${board.count}</td>
					</tr>
				</c:forEach>		
			</c:otherwise>
		</c:choose>	
	</table>
		<input type="button" value="처음으로" onclick="location.href='list.jsp';" />
		<input type="button" value="글쓰기" onclick="location.href='post.jsp';" />
</body>
</html>