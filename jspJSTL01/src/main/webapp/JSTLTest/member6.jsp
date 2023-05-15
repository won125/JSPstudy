<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspJSTL01.ex01.*"
	isELIgnored="false"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	List memberList = new ArrayList();
	MemberBean bean1 = new MemberBean("son","1234","손흥민","son@naver.com");
	MemberBean bean2 = new MemberBean("lee","1232","이강인","lee@naver.com");
	MemberBean bean3 = new MemberBean("park","1244","박지성","park@naver.com");
	memberList.add(bean1);
	memberList.add(bean2);
	memberList.add(bean3);
%>
<c:set var="memberList" value="<%=memberList %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl 반복문</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="yellow">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>

		<c:forEach var="i" begin="0" end="2" step="1">
			<tr align="center">
				<td>${memberList[i].id}</td>
				<td>${memberList[i].pwd}</td>
				<td>${memberList[i].name}</td>
				<td>${memberList[i].email}</td>
			</tr>			
		</c:forEach>
	</table>
</body>
</html>