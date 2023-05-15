<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspAction01.ex01.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memBean" class="jspAction01.ex01.MemberBean" scope="page"></jsp:useBean>
<%
	String command = request.getParameter("command");
	MemberDAO dao = new MemberDAO();
	if(command != null && command.equals("addMember")){
%>
<jsp:setProperty property="id" name="memBean" param="id"/>
<jsp:setProperty property="pwd" name="memBean" param="pwd"'/>
<jsp:setProperty property="name" name="memBean" param="name"/>
<jsp:setProperty property="email" name="memBean" param="email"/>
<!-- value 대시 param속성으로 파라미터값을 매개변수로 가져와도 된다. -->

<%
		dao.addMember(memBean);
	}else{
		String id = request.getParameter("id");
		dao.delMember(id);
	}
	List memberList = dao.listMembers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
	<h2>회원 목록</h2>
	<table border="1" width="700" align="center">
		<tr align="center" bgcolor="yellow">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>가입날짜</th>
		</tr>
		<%
			if(memberList.size() == 0){
		%>
			<tr><td colspan="5">
			<p align="center">등록된 회원이 없습니다.</p>
			</td></tr> 
		<%
			}else{
				for(int i = 0; i < memberList.size(); i++){
					MemberBean bean = (MemberBean)memberList.get(i);
		%>
		<tr align="center" bgcolor="cyan">
			<td><%=bean.getId()%></td>
			<td><%=bean.getPwd()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getEmail()%></td>
			<td><%=bean.getJoinDate()%></td>
			<td><a href="/jspAction01/member.jsp?command=delMember&id=<%=bean.getId() %>">탈퇴하기</a></td>
		</tr>
		<%
				}
			}
		%>			
	</table>
	<a href="memberForm.html">회원가입 홈으로</a>
</body>
</html>