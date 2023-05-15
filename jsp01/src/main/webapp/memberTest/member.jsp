<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"
    import = "jsp01.ex02.*"
    %>
<%
	request.setCharacterEncoding("utf-8");
	String _name = request.getParameter("name");
	MemberVO memberVO = new MemberVO();
	memberVO.setName(_name);
	MemberDAO dao = new MemberDAO();
	List memberList = dao.listMembers(memberVO);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 검색 결과 출력창</title>
<style type="text/css">
	h1 {
		text-align: center;
		}
</style>
</head>
<body>
	<h1>회원 정보 출력</h1>
	<table border="1" width="700" align="center">
		<tr align="center" bgcolor="#faf4c0">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>가입일</th>
		</tr>
		<%
			for(int i = 0; i < memberList.size(); i++){
				MemberVO vo = (MemberVO)memberList.get(i);
				String id = vo.getId();
				String pwd = vo.getPwd();
				String name = vo.getName();
				String email = vo.getEmail();
				Date date = vo.getJoinDate();
		%>
		<tr align="center">
			<td><%=id %></td>
			<td><%=pwd %></td>
			<td><%=name %></td>
			<td><%=email %></td>
			<td><%=date %></td>
		</tr>
		<%
			}
		%>
	</table>
	<a href="search.jsp">검색창으로 돌아가기</a>
</body>
</html>