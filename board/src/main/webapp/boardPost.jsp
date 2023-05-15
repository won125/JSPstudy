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
<jsp:useBean id="boardBean" class="board.BoardBean"/>
<jsp:setProperty property="*" name="boardBean"/>
<%
	BoardMgr boardMgr = new BoardMgr();
	boardMgr.addBoard(boardBean);
	List boardList = boardMgr.listBoards();
	request.setAttribute("boardList", boardList);
%>
</head>
<body>
	<jsp:forward page="list.jsp"/>
</body>
</html>