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
<title>수정 페이지</title>
</head>
<body>
	<form name="BoardUpdateForm" method="post" action="update">
		<table>
		<caption>게시글 수정</caption>	
    		<tr>
				<td>작성자</td>
				<td><input type="text" name="name" id="name" value="" readonly></td>
			</tr>
    		<tr>
     			<td>제 목</td>
     			<td><input type="text" name="subject" id="subject"></td>
    		</tr>
    		<tr>
     			<td>내 용</td>
     			<td><textarea name="content" id="content" rows ="10" cols="100"></textarea></td>
    		</tr>
    		<tr>
     			<td>비밀번호</td> 
     			<td><input type="password" name="pass" id="pass"></td>
    		</tr>
    		<tr>
     			<td colspan=2><hr size=1></td>
    		</tr>
    		<tr>
     			<td colspan="2">
	     			<div align="center">
		     			<input type="submit" value="수정" >
		         		<input type="button" value="취소" onclick="location.href='list.jsp';">
	         		</div>
     			</td>
    		</tr> 
		</table>
	</form> 
</body>
</html>